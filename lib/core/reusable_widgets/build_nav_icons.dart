

import 'package:ardilla_mobile_application/core/size_configuration.dart';
import 'package:flutter/material.dart';

class NavIcons extends StatelessWidget {
  const NavIcons({Key? key, required this.iconImage}) : super(key: key);

  final String iconImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getProportionateScreenHeight(22),
      width: getProportionateScreenWidth(22),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(iconImage)
        )
      ),
    );
  }
}
