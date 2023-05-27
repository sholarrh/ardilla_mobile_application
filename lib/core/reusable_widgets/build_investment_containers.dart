import 'package:ardilla_mobile_application/core/constants.dart';
import 'package:ardilla_mobile_application/core/size_configuration.dart';
import 'package:flutter/material.dart';

import 'build_text_widget.dart';

class InvestmentContainer extends StatelessWidget {
  const InvestmentContainer({Key? key,
    required this.color,
    required this.image,
    required this.text1,
    required this.text2,
    required this.text3,
  }) : super(key: key);

  final Color color;
  final String image;
  final String text1;
  final String text2;
  final String text3;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: getProportionateScreenHeight(98),
          width: getProportionateScreenWidth(335),
          alignment: Alignment.bottomCenter,
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
              ),
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    color.withOpacity(0.20),
                    Palette.d9Color.withOpacity(0.0),
                  ],
              )
          ),
          child: SizedBox(
            height: getProportionateScreenHeight(63),
            width: getProportionateScreenWidth(101),
            child: Image.asset(image),
          ),
        ),
        Container(
          height: getProportionateScreenHeight(141),
          width: getProportionateScreenWidth(335),
          alignment: Alignment.center,
          color: Palette.f9Color,
          child: Column(
            children: [
              SizedBox(height: getProportionateScreenHeight(13),),
              createGeneralText(
                inputText: text1,
                fontSize: 15,
                weight: FontWeight.w500,
                colorName: Palette.textColor,
                family: FontFamily.cabinetRegular,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: getProportionateScreenHeight(14),),
              createGeneralText(
                inputText: '$text2 ROI',
                fontSize: 12,
                weight: FontWeight.w500,
                colorName: Palette.gray400Color,
                family: FontFamily.cabinetRegular,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: getProportionateScreenHeight(12),),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  createGeneralText(
                    inputText: text3,
                    fontSize: 10,
                    weight: FontWeight.w500,
                    colorName: Palette.primaryColor,
                    family: FontFamily.cabinetRegular,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(width: getProportionateScreenWidth(6),),
                  Icon(
                    Icons.arrow_forward,
                    color: Palette.primaryColor,
                    size: getProportionateScreenWidth(10),
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
