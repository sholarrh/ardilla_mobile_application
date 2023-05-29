import 'package:ardilla_mobile_application/core/constants.dart';
import 'package:ardilla_mobile_application/core/size_configuration.dart';
import 'package:flutter/material.dart';

import '../../../core/reusable_widgets/build_investment_containers.dart';

class InvestmentBuilder extends StatefulWidget {
  const InvestmentBuilder({Key? key}) : super(key: key);

  @override
  State<InvestmentBuilder> createState() => _InvestmentBuilderState();
}

class _InvestmentBuilderState extends State<InvestmentBuilder> {

  final ScrollController _scrollController = ScrollController();

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }

  void scrollToNextItem() {
    const double itemHeight = 335.0;// specify the height of each item in the ListView
    final double currentOffset = _scrollController.offset;
    final double nextOffset = currentOffset + itemHeight;

    _scrollController.animateTo(
      nextOffset,
      duration: const Duration(milliseconds: 500), // specify the duration of the scroll animation
      curve: Curves.ease, // specify the easing curve of the scroll animation
    );
  }

  void scrollToPreviousItem() {
    const double itemHeight = 335.0;// specify the height of each item in the ListView
    final double currentOffset = _scrollController.offset;
    final double previousOffset = currentOffset - itemHeight;

    _scrollController.animateTo(
      previousOffset,
      duration: const Duration(milliseconds: 500), // specify the duration of the scroll animation
      curve: Curves.ease, // specify the easing curve of the scroll animation
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(right: getProportionateScreenWidth(30)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              buildContainer(
                  isForward: false,
                  onTap: () {
                    scrollToPreviousItem();

              }),
              SizedBox(
                width: getProportionateScreenWidth(14.9),
              ),
              buildContainer(
                  isForward: true,
                  onTap: () {
                    scrollToNextItem();
                  }
              ),
            ],
          ),
        ),
        SizedBox(
          height: getProportionateScreenHeight(16.9),
        ),
        SizedBox(
          height: getProportionateScreenHeight(240),
          child: ListView(
            controller: _scrollController,
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            children:  [
              const InvestmentContainer(
                color: Palette.primaryColor,
                image: 'images/Group 1.png',
                text1: 'Unprecedented access to\ninvestment opportunities',
                text2: '20% Monthly',
                text3: 'Start Investing',
              ),
              SizedBox(width: getProportionateScreenWidth(38),),
              const InvestmentContainer(
                color: Palette.gradient2Color,
                image: 'images/group 2.png',
                text1: 'Build your savings the right\nway',
                text2: '12% annual',
                text3: 'Start Investing',
              ),
              SizedBox(width: getProportionateScreenWidth(38),),
              const InvestmentContainer(
                color: Palette.secondaryColor,
                image: 'images/group 3.png',
                text1: 'Insurance policies you can\ntrust',
                text2: '12% annual',
                text3: 'Make youe first claim',
              ),
            ],
          ),
        )
      ],
    );
  }

  GestureDetector buildContainer(
      {required bool isForward, required void Function()? onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: getProportionateScreenHeight(31.62),
        width: getProportionateScreenWidth(31.62),
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Palette.whiteColor,
        ),
        child: Icon(
          isForward ? Icons.arrow_forward_ios : Icons.arrow_back_ios_new,
          color: Palette.blackColor.withOpacity(0.80),
          size: getProportionateScreenWidth(15.81),
        ),
      ),
    );
  }
}
