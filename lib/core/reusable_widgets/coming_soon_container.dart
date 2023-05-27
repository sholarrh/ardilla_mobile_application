import 'package:flutter/material.dart';

import '../constants.dart';
import '../size_configuration.dart';
import 'build_text_widget.dart';

class ComingSoonContainer extends StatelessWidget {
  const ComingSoonContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getProportionateScreenHeight(20),
      width: getProportionateScreenWidth(54),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        border: Border.all(
          width: 0.8,
          color: Palette.whiteColor,
        ),
        borderRadius: BorderRadius.circular(71.67),
      ),
      child: createGeneralText(
        inputText: 'Coming Soon',
        fontSize: 6,
        weight: FontWeight.w500,
        colorName: Palette.whiteColor,
        family: FontFamily.cabinetRegular,
        textAlign: TextAlign.center,
      ),
    );
  }
}