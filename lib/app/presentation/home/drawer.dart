
import 'package:ardilla_mobile_application/core/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/reusable_widgets/build_text_widget.dart';
import '../../../core/reusable_widgets/coming_soon_container.dart';
import '../../../core/reusable_widgets/log_out_dialog.dart';
import '../../../core/size_configuration.dart';
import '../../data/data_storage/user_profile_storage.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    String firstName = UserProfileStorage.retrieveFirstName();
    String lastName = UserProfileStorage.retrieveLastName();
    String fullName = '$firstName $lastName';
    return Drawer(
      width: getProportionateScreenWidth(270),
      backgroundColor: Palette.primaryColor,
      child: ListView(
        padding: EdgeInsets.only(
          left: getProportionateScreenWidth(38)
        ),
        children: [
          DrawerHeader(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: getProportionateScreenHeight(51),
                  width: getProportionateScreenWidth(51),
                  child: Image.asset('images/profile picture.png'),
                ),
                SizedBox(
                  height: getProportionateScreenHeight(18),
                ),
                createGeneralText(
                  inputText: fullName,
                  fontSize: 18,
                  weight: FontWeight.w700,
                  colorName: Palette.whiteColor,
                  family: FontFamily.cabinetRegular,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.account_circle_outlined,
            color: Palette.whiteColor,
              size: 20,
            ),
            title: createGeneralText(
              inputText: 'Profile',
              fontSize: 12,
              weight: FontWeight.w500,
              colorName: Palette.whiteColor,
              family: FontFamily.cabinetRegular,
            ),
          ),
          ListTile(
            leading: const Icon(Icons.work_outline,
              color: Palette.whiteColor,
              size: 20,
            ),
            title: createGeneralText(
              inputText: 'Portfolio',
              fontSize: 12,
              weight: FontWeight.w500,
              colorName: Palette.whiteColor,
              family: FontFamily.cabinetRegular,
            ),
          ),
          ListTile(
            leading: const Icon(Icons.payment,
              color: Palette.whiteColor,
              size: 20,
            ),
            title: createGeneralText(
              inputText: 'Payment',
              fontSize: 12,
              weight: FontWeight.w500,
              colorName: Palette.whiteColor,
              family: FontFamily.cabinetRegular,
            ),
          ),
          ListTile(
            leading: SizedBox(
              height: getProportionateScreenHeight(24),
                width: getProportionateScreenWidth(24),
                child: Image.asset('images/investment.png')),
            title: Row(
              children: [
                createGeneralText(
                  inputText: 'Investment',
                  fontSize: 12,
                  weight: FontWeight.w500,
                  colorName: Palette.whiteColor,
                  family: FontFamily.cabinetRegular,
                ),
                SizedBox(width: getProportionateScreenWidth(12),),
                const ComingSoonContainer()
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.security_outlined,
              color: Palette.whiteColor,
              size: 20,
            ),
            title: Row(
              children: [
                createGeneralText(
                  inputText: 'Insurance',
                  fontSize: 12,
                  weight: FontWeight.w500,
                  colorName: Palette.whiteColor,
                  family: FontFamily.cabinetRegular,
                ),
                SizedBox(width: getProportionateScreenWidth(12),),
                const ComingSoonContainer()
              ],
            ),
          ),
          ListTile(
            leading: const Icon(CupertinoIcons.compass,
              color: Palette.whiteColor,
              size: 20,
            ),
            title: createGeneralText(
              inputText: 'Budgeting',
              fontSize: 12,
              weight: FontWeight.w500,
              colorName: Palette.whiteColor,
              family: FontFamily.cabinetRegular,
            ),
          ),
          SizedBox(height: getProportionateScreenHeight(80),),
          ListTile(
            leading:  SizedBox(
                height: getProportionateScreenHeight(24),
                width: getProportionateScreenWidth(24),
                child: Image.asset('images/log out.png')),
            title: createGeneralText(
              inputText: 'Log Out',
              fontSize: 12,
              weight: FontWeight.w500,
              colorName: Palette.whiteColor,
              family: FontFamily.cabinetRegular,
            ),
            onTap: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) => const LogOutDialog()
              );
              },
          ),
        ],
      ),
    );
  }
}
