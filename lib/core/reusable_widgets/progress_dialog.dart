import 'package:flutter/material.dart';
import '../constants.dart';
import '../size_configuration.dart';
import 'build_text_widget.dart';

class ProgressDialog extends StatelessWidget {
  final String message;
  const ProgressDialog({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Dialog(
      backgroundColor: Palette.whiteColor,
      child: Container(
        margin: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(35),
            vertical: getProportionateScreenHeight(20)),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
        child: Row(

          children: [
            CircularProgressIndicator(
              strokeWidth: getProportionateScreenWidth(3),
              valueColor: const AlwaysStoppedAnimation<Color>(Palette.primaryColor),
            ),
            SizedBox(
              width: getProportionateScreenWidth(40),
            ),
            createGeneralText(
                inputText: message,
                fontSize: 16,
                family: FontFamily.cabinetRegular,
                weight: FontWeight.w400,
                colorName: Palette.blackColor,
            )
          ],
        ),
      ),
    );
  }
}
