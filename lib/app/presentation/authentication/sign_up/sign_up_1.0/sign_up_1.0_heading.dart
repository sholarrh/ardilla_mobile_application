

import 'package:flutter/material.dart';

import '../../../../../core/constants.dart';
import '../../../../../core/reusable_widgets/back_button.dart';
import '../../../../../core/size_configuration.dart';

class Heading extends StatelessWidget {
  const Heading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: getProportionateScreenHeight(67),
        ),
        Padding(
          padding: EdgeInsets.only(left: getProportionateScreenWidth(35)),
          child: const CustomBackButton(
            color: Palette.whiteColor,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
                height: getProportionateScreenHeight(49),
                width: getProportionateScreenWidth(149),
                child: Image.asset('images/ardilla.png')),
          ],
        ),
        SizedBox(
          height: getProportionateScreenHeight(70),
        ),
      ],
    );
  }
}
