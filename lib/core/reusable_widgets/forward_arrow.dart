import 'package:flutter/material.dart';

import '../constants.dart';
import '../size_configuration.dart';

class ForwardArrow extends StatelessWidget {
  const ForwardArrow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}