import 'package:ardilla_mobile_application/core/size_configuration.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
import 'build_text_widget.dart';

class QuickLinkContainer extends StatelessWidget {
  const QuickLinkContainer(
      {Key? key,
        required this.color,
        required this.image,
        required this.title,
      })
      : super(key: key);

  final Color color;
  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {},
          child: Container(
            height: getProportionateScreenHeight(63),
            width: getProportionateScreenWidth(60),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: color,
            ),
            child: SizedBox(
              height: getProportionateScreenHeight(30),
              width: getProportionateScreenWidth(30),
              child: Image.asset(image,
              ),
            ),
          ),
        ),
        SizedBox(
          height: getProportionateScreenHeight(7),
        ),
        createGeneralText(
          inputText: title,
          fontSize: 10,
          weight: FontWeight.w500,
          colorName: Palette.textColor,
          family: FontFamily.cabinetRegular,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
