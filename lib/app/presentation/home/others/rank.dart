

import 'package:ardilla_mobile_application/core/size_configuration.dart';
import 'package:flutter/material.dart';

import '../../../../core/constants.dart';
import '../../../../core/reusable_widgets/build_text_widget.dart';

class Rank extends StatelessWidget {
  const Rank({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         createGeneralText(
          inputText: 'Rank',
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
              image: AssetImage('images/rank.png'),
            ),
            borderRadius: BorderRadius.circular(7),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              createGeneralText(
                inputText: 'Cadet',
                fontSize: 20,
                weight: FontWeight.w700,
                colorName: Palette.secondaryColor,
                family: FontFamily.cabinetRegular,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: getProportionateScreenHeight(14),),
              createGeneralText(
                inputText: 'Move up your Rank by completing\ntransactions',
                fontSize: 10,
                weight: FontWeight.w400,
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
