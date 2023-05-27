

import 'package:ardilla_mobile_application/core/constants.dart';
import 'package:flutter/material.dart';

import '../../../../core/reusable_widgets/build_text_widget.dart';
import '../../../../core/size_configuration.dart';

class OtherScreens extends StatelessWidget {
  const OtherScreens({Key? key, required this.screen}) : super(key: key);

  final String screen;

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      backgroundColor: Palette.whiteColor,
      body: Center(
        child: createGeneralText(
          inputText: screen,
          fontSize: 40,
          weight: FontWeight.w500,
          colorName: Palette.primaryColor,
          family: FontFamily.cabinetBold,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
