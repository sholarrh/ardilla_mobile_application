

import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../core/constants.dart';
import '../../../core/reusable_widgets/build_button_widget.dart';
import '../../../core/reusable_widgets/build_text_widget.dart';
import '../../../core/size_configuration.dart';
import '../authentication/sign_up/sign_up_1.0.dart';


class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  int _currentIndex = 0;
  int currentIndex = 1;
  double percent = 0.33;
  final PageController _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      backgroundColor: Palette.whiteColor,
      body: SafeArea(
        child: PageView.builder(
          allowImplicitScrolling: true,
          controller: _pageController,
          itemCount: tabs.length,
          itemBuilder: (BuildContext context, int index) {
            return SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.only(
                    right: getProportionateScreenWidth(20),
                    left: getProportionateScreenWidth(20),
                    bottom: getProportionateScreenHeight(76)
                ),
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: getProportionateScreenHeight(20),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        GestureDetector(
                          onTap: () {
                            _currentIndex < 2 ?
                            _pageController.jumpToPage(tabs.length)
                            : null;
                          },
                          child: createGeneralText(
                            inputText: 'Skip',
                            fontSize: 16,
                            weight: FontWeight.w700,
                            colorName: Palette.primaryColor,
                            family: FontFamily.cabinetBold,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: getProportionateScreenHeight(36),
                    ),
                    Container(
                      height: getProportionateScreenHeight(373),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            tabs[index].assetImage,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: getProportionateScreenHeight(20),
                    ),

                    createGeneralText(
                      inputText: tabs[index].title,
                      fontSize: 36,
                      weight: FontWeight.w700,
                      colorName: Palette.textColor,
                      family: FontFamily.cabinetBold,
                      textAlign: TextAlign.center,
                    ),
                    Padding(
                      padding:
                      EdgeInsets.only(top: getProportionateScreenHeight(10)),
                      child: createGeneralText(
                        inputText: tabs[index].subtitle,
                        fontSize: 12,
                        weight: FontWeight.w400,
                        colorName: Palette.gray500Color,
                        family: FontFamily.cabinetRegular,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      height: getProportionateScreenHeight(73),
                    ),
                    Padding(
                      padding:  EdgeInsets.symmetric(
                        horizontal: getProportionateScreenWidth(40)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SmoothPageIndicator(
                            controller: _pageController,
                            count: tabs.length,
                            effect: ExpandingDotsEffect(
                              dotHeight: getProportionateScreenHeight(7),
                              dotWidth: getProportionateScreenWidth(7),
                              dotColor: Palette.dotColor,
                              spacing: getProportionateScreenWidth(2),
                              activeDotColor: Palette.primaryColor,
                              expansionFactor: 6,
                            ),
                          ),
                          CircularPercentIndicator(
                            radius: 43.5,
                            lineWidth: 2.0,
                            percent: percent,
                            backgroundColor: Palette.whiteColor,
                            progressColor: Palette.primaryColor,
                            center: GestureDetector(
                              onTap: () {
                                _currentIndex <= (tabs.length - 2)
                                    ? _pageController.nextPage(
                                    duration: const Duration(
                                        milliseconds: 300,
                                    ),
                                    curve: Curves.linear)
                                    : Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const GetStartedScreen()),
                                );
                              },
                              child: Container(
                                alignment: Alignment.center,
                                width: getProportionateScreenWidth(65),
                                height: getProportionateScreenHeight(65),
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Palette.primaryColor,
                                ),
                                child: Icon(
                                  Icons.arrow_forward,
                                  size:
                                  getProportionateScreenHeight(33),
                                  color: Palette.whiteColor,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
          onPageChanged: (value) {
            _currentIndex = value;
            if (_currentIndex == 0) {
              percent = 0.33;
            } else if (_currentIndex == 1) {
              percent = 0.66;
            } else if (_currentIndex == 2) {
              percent = 1.00;
            }
            setState(() {});
          },
        ),
      ),
    );
  }
}

class OnBoardingModel {
  final String assetImage;
  final String title;
  final String subtitle;

  OnBoardingModel(
      this.assetImage,
      this.title,
      this.subtitle,
      );
}

List<OnBoardingModel> tabs = [
  OnBoardingModel(
    'images/onboarding.png',
    'Lorem Ipsum Kip\nAntares Lorem',
    'Lorem ipsum dolor sit amet consectetur. Congue eget\naliquet nullam velit volutpat in viverra. Amet integer\nurna ornare congue ultrices at.',
  ),
  OnBoardingModel(
    'images/onboarding.png',
    'Lorem Ipsum Kip\nAntares Lorem',
    'Lorem ipsum dolor sit amet consectetur. Congue eget\naliquet nullam velit volutpat in viverra. Amet integer\nurna ornare congue ultrices at.',
  ),
  OnBoardingModel(
    'images/onboarding.png',
    'Lorem Ipsum Kip\nAntares Lorem',
    'Lorem ipsum dolor sit amet consectetur. Congue eget\naliquet nullam velit volutpat in viverra. Amet integer\nurna ornare congue ultrices at.',
  ),
];

