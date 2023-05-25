import 'package:flutter/material.dart';

import '../constants.dart';
import '../size_configuration.dart';

class BuildButton extends StatelessWidget {
  const BuildButton({
    super.key,
    required this.onPressed,
    required this.buttonText,
    required this.buttonTextColor,
    required this.buttonColor,
    required this.borderColor,

  });

  final void Function()? onPressed;
  final String buttonText;
  final Color buttonTextColor;
  final Color buttonColor;
  final Color borderColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getProportionateScreenHeight(57),
      width: getProportionateScreenWidth(360),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            elevation: 0,
            backgroundColor: buttonColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(88.77),
                side: BorderSide(color: borderColor))),
        child: Text(
          buttonText,
          style: TextStyle(
            color: buttonTextColor,
            fontSize: getProportionateScreenWidth(15.52),
            fontWeight: FontWeight.w700,
            fontFamily:  FontFamily.cabinetRegular,
          ),
        ),
      ),
    );
  }
}