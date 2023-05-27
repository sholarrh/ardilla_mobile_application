import 'package:flutter/material.dart';

import '../../../core/constants.dart';
import '../../../core/reusable_widgets/build_text_widget.dart';
import '../../../core/reusable_widgets/coming_soon_container.dart';
import '../../../core/size_configuration.dart';

class Explore extends StatelessWidget {
  const Explore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        createGeneralText(
          inputText: 'Explore',
          fontSize: 16,
          weight: FontWeight.w500,
          colorName: Palette.textColor,
          family: FontFamily.cabinetRegular,
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: getProportionateScreenHeight(20),
        ),
        SizedBox(
          height: getProportionateScreenHeight(198),
          width: getProportionateScreenWidth(1069),
          child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              children: [
                Container(
                  height: getProportionateScreenHeight(198),
                  width: getProportionateScreenWidth(1069),
                  padding: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenWidth(55),
                      vertical: getProportionateScreenHeight(55)),
                  //alignment: Alignment.center,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('images/explore.png'))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      buildColumn(
                        title: 'My Family and I',
                        subtitle: 'A Family that stay together stays forever',
                      ),
                      SizedBox(
                        width: getProportionateScreenWidth(10),
                      ),
                      const VerticalDivider(
                        width: 86,
                        color: Palette.whiteColor,
                      ),
                      buildColumn(
                        title: 'Invest With Hargon',
                        subtitle: 'Loan as an investment',
                      ),
                      SizedBox(
                        width: getProportionateScreenWidth(10),
                      ),
                      const VerticalDivider(
                        width: 86,
                        color: Palette.whiteColor,
                      ),
                      buildColumn(
                        title: 'Business with Ardilla',
                        subtitle: 'A Partnership where you Earn!',
                      ),
                      SizedBox(
                        width: getProportionateScreenWidth(10),
                      ),
                      const VerticalDivider(
                        width: 86,
                        color: Palette.whiteColor,
                      ),
                      buildColumn(
                        title: 'Tax Save',
                        subtitle: 'Where you save while spending',
                      ),
                    ],
                  ),
                ),
              ]),
        )
      ],
    );
  }

  Column buildColumn(
  { required String title,
    required String subtitle,
  }
      ) {
    return Column(
      children: [
        createGeneralText(
          inputText: title,
          fontSize: 16,
          weight: FontWeight.w500,
          colorName: Palette.text2Color,
          family: FontFamily.cabinetRegular,
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: getProportionateScreenHeight(8.64),
        ),
        createGeneralText(
          inputText: subtitle,
          fontSize: 10,
          weight: FontWeight.w400,
          colorName: Palette.whiteColor,
          family: FontFamily.cabinetRegular,
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: getProportionateScreenHeight(20),
        ),
        const ComingSoonContainer(),
      ],
    );
  }
}


