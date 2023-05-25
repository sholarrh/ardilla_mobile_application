import 'package:flutter/material.dart';

import '../size_configuration.dart';

class BuildButton extends StatelessWidget {
  const BuildButton({
    super.key,
    required this.onPressed,
    required this.buttonText,
    required this.containerHeight,
    required this.containerWidth,
    required this.borderRadiusSize,
    required this.buttonTextSize,
    required this.buttonTextColor,
    required this.buttonColor,
    required this.borderColor,
    required this.buttonTextWeight,
    required this.buttonTextFamily,
  });

  final void Function()? onPressed;
  final String buttonText;
  final double containerHeight;
  final double containerWidth;
  final double borderRadiusSize;
  final double buttonTextSize;
  final Color buttonTextColor;
  final Color buttonColor;
  final Color borderColor;
  final FontWeight buttonTextWeight;
  final String buttonTextFamily;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getProportionateScreenHeight(containerHeight),
      width: getProportionateScreenWidth(containerWidth),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            elevation: 0,
            backgroundColor: buttonColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(borderRadiusSize),
                side: BorderSide(color: borderColor))),
        child: Text(
          buttonText,
          style: TextStyle(
            color: buttonTextColor,
            fontSize: getProportionateScreenWidth(buttonTextSize),
            fontWeight: buttonTextWeight,
            fontFamily: buttonTextFamily,
          ),
        ),
      ),
    );
  }
}