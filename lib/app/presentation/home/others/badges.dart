
import 'package:flutter/material.dart';

import '../../../../core/constants.dart';
import '../../../../core/reusable_widgets/build_text_widget.dart';
import '../../../../core/size_configuration.dart';

class Badges extends StatelessWidget {
  const Badges({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        createGeneralText(
          inputText: 'Badges',
          fontSize: 16,
          weight: FontWeight.w500,
          colorName: Palette.textColor,
          family: FontFamily.cabinetRegular,
          textAlign: TextAlign.center,
        ),
        SizedBox(height: getProportionateScreenHeight(20),),
        Container(
          height: getProportionateScreenHeight(191),
          width: getProportionateScreenWidth(335),
          padding: EdgeInsets.only(
              top: getProportionateScreenHeight(32),
              left: getProportionateScreenWidth(23)
          ),
          decoration: BoxDecoration(
            image: const DecorationImage(
              image: AssetImage('images/badges.png'),
            ),
            borderRadius: BorderRadius.circular(7),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              createGeneralText(
                inputText: 'Beginner',
                fontSize: 20,
                weight: FontWeight.w700,
                colorName: Palette.textColor,
                family: FontFamily.cabinetRegular,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: getProportionateScreenHeight(14),),
              createGeneralText(
                inputText: 'Move up your Badge by completing transactions',
                fontSize: 10,
                weight: FontWeight.w400,
                colorName: Palette.textColor,
                family: FontFamily.cabinetRegular,
                textAlign: TextAlign.start,
              ),
              SizedBox(height: getProportionateScreenHeight(40,),),
              SizedBox(
                  height: getProportionateScreenHeight(34),
                  width: getProportionateScreenWidth(34),
                  child: Image.asset('images/badges image.png')),
              SizedBox(height: getProportionateScreenHeight(5),),
              createGeneralText(
                inputText: 'Super Saver',
                fontSize: 10,
                weight: FontWeight.w500,
                colorName: Palette.textColor,
                family: FontFamily.cabinetRegular,
                textAlign: TextAlign.start,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
