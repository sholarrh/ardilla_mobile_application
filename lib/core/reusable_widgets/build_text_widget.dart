import 'package:flutter/material.dart';
import '../size_configuration.dart';

Text createGeneralText({
  required String inputText,
  required double fontSize,
  String? family,
  required FontWeight weight,
  required Color colorName,
  bool? softWrap,
  double letterSpacing = 0.0,
  TextAlign? textAlign,  TextOverflow? overflow,
}) {
  return Text(
    inputText,
    textAlign: textAlign,
    softWrap: softWrap,
    style: TextStyle(
        letterSpacing: getProportionateScreenWidth(letterSpacing),
        fontSize: getProportionateScreenWidth(fontSize),
        fontFamily: family,
        fontWeight: weight,
        overflow: overflow,
        color: colorName,
    ),
  );
}
