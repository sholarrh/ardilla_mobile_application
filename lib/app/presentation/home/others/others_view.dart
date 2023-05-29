

import 'package:ardilla_mobile_application/app/presentation/home/others/rank.dart';
import 'package:ardilla_mobile_application/app/presentation/home/others/referrals.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../core/constants.dart';
import '../../../../core/size_configuration.dart';
import 'badges.dart';
import 'money wise.dart';

class OthersView extends StatefulWidget {
  const OthersView({Key? key}) : super(key: key);

  @override
  State<OthersView> createState() => _OthersViewState();
}

class _OthersViewState extends State<OthersView> {

  List<Widget> others = [
    const Rank(),
    const Badges(),
    const Referrals(),
    const MoneyWise(),
  ];
  final PageController _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        allowImplicitScrolling: true,
        controller: _pageController,
        itemCount: others.length,
        onPageChanged: (value) {},
        itemBuilder: (BuildContext context, int index) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: double.infinity,
                  child: others[index]),
              SizedBox(height: getProportionateScreenHeight(28.34),),
              SmoothPageIndicator(
                controller: _pageController,
                count: others.length,
                effect: ExpandingDotsEffect(
                  dotHeight: getProportionateScreenHeight(7),
                  dotWidth: getProportionateScreenWidth(7),
                  dotColor: Palette.primaryColor.withOpacity(0.50),
                  spacing: getProportionateScreenWidth(2),
                  activeDotColor: Palette.primaryColor,
                  expansionFactor: 6,
                ),
              ),
            ],
          );
        });
  }
}
