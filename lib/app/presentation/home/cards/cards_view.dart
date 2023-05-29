import 'package:ardilla_mobile_application/app/presentation/home/cards/pink_card.dart';
import 'package:ardilla_mobile_application/app/presentation/home/cards/white_card.dart';
import 'package:ardilla_mobile_application/core/constants.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../core/size_configuration.dart';
import 'blue_card.dart';

class CardsView extends StatefulWidget {
  const CardsView({Key? key}) : super(key: key);

  @override
  State<CardsView> createState() => _CardsViewState();
}

class _CardsViewState extends State<CardsView> {
  List<Widget> cards = [
    const BlueCard(),
    const PinkCard(),
    const WhiteCard(),
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
        itemCount: cards.length,
        onPageChanged: (value) {},
        itemBuilder: (BuildContext context, int index) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                  height: getProportionateScreenHeight(224),
                  width: getProportionateScreenWidth(396),
                  child: cards[index]),
              SmoothPageIndicator(
                controller: _pageController,
                count: cards.length,
                effect:  const CustomizableEffect(
                      activeDotDecoration: DotDecoration(
                        width: 70,
                        height: 3,
                        color: Palette.primaryColor,
                      ),
                      dotDecoration: DotDecoration(
                        width: 70,
                        height: 3,
                        color: Palette.d9Color,
                      ),
                      spacing: 5.0,
                    ),
              ),
            ],
          );
        });
  }
}
