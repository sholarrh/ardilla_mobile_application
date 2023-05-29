import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';
import 'package:provider/provider.dart';

import '../../../../core/constants.dart';
import '../../../../core/provider/home_provider/navigation_bar_provider.dart';
import '../../../../core/size_configuration.dart';
import '../dashboard.dart';
import 'other_screens.dart';

class Nav extends StatefulWidget {
  const Nav({Key? key}) : super(key: key);

  @override
  State<Nav> createState() => _NavState();
}

class _NavState extends State<Nav> {
  List<Widget> _buildScreens() {
    return [
      const DashBoard(),
      const OtherScreens(
        screen: 'Save',
      ),
      const OtherScreens(
        screen: 'Explore',
      ),
      const OtherScreens(
        screen: 'Learn',
      ),
      const OtherScreens(
        screen: 'Dilla',
      ),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        inactiveIcon: const Icon(Icons.home_outlined),
        icon: const Icon(
          Icons.home_outlined,
        ),
        title: "Home",
        activeColorPrimary: Palette.primaryColor,
        inactiveColorPrimary: Palette.gray500Color,
      ),
      PersistentBottomNavBarItem(
        inactiveIcon: const Icon(
          Icons.energy_savings_leaf_outlined,
        ),
        icon: const Icon(
          Icons.energy_savings_leaf_outlined,
        ),
        title: "Save",
        activeColorPrimary: Palette.primaryColor,
        inactiveColorPrimary: Palette.gray500Color,
      ),
      PersistentBottomNavBarItem(
        inactiveIcon: const Icon(
          CupertinoIcons.compass,
        ),
        icon: const Icon(
          CupertinoIcons.compass,
        ),
        title: "Explore",
        activeColorPrimary: Palette.primaryColor,
        inactiveColorPrimary: Palette.gray500Color,
      ),
      PersistentBottomNavBarItem(
        inactiveIcon: Image.asset('images/learn icon.png'),
        icon: Image.asset('images/learn icon.png'),
        title: "Learn",
        activeColorPrimary: Palette.primaryColor,
        inactiveColorPrimary: Palette.gray500Color,
      ),
      PersistentBottomNavBarItem(
        inactiveIcon: Image.asset('images/wallet icon.png'),
        icon: Image.asset('images/wallet icon.png'),
        title: "Dilla",
        activeColorPrimary: Palette.primaryColor,
        inactiveColorPrimary: Palette.gray500Color,
      ),
    ];
  }

  @override
  void initState() {
    super.initState();
    BottomBarNav.controller =
        PersistentTabController(initialIndex: BottomBarNav.selectedIndex);
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return PersistentTabView(
      context,

      // padding: const NavBarPadding.only(
      //     top: 10
      // ),
      controller: BottomBarNav.controller,
      onItemSelected:
          Provider.of<BottomBarNav>(context, listen: false).onItemTapped,
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: Palette.whiteColor,
      handleAndroidBackButtonPress: true,
      resizeToAvoidBottomInset: true,
      stateManagement: true,
      hideNavigationBarWhenKeyboardShows: true,
      decoration: const NavBarDecoration(),
      popAllScreensOnTapOfSelectedTab: false,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: const ItemAnimationProperties(
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: const ScreenTransitionAnimation(
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle: NavBarStyle.style6, // Choose the nav bar style with this property.
    );
  }
}
