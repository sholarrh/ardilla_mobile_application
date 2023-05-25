

import 'package:flutter/material.dart';

import '../../../../../core/constants.dart';
import '../../../../../core/size_configuration.dart';

class PurpleRow extends StatelessWidget {
  const PurpleRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: getProportionateScreenHeight(17),
          width: getProportionateScreenWidth(395),
          decoration:  BoxDecoration(
              color: Palette.whiteColor.withOpacity(0.5),
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20))
          ),
        ),
      ],
    );
  }
}
