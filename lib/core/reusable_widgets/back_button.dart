import 'package:flutter/material.dart';

import '../size_configuration.dart';


class CustomBackButton extends StatelessWidget {
  const CustomBackButton({Key? key, required this.color}) : super(key: key);

  final Color color;

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: Icon(
        Icons.arrow_back_ios_new_rounded,
        color: color,
        size: getProportionateScreenWidth(24),
      ),
    );
  }
}
