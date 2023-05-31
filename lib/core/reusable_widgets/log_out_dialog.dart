import 'package:flutter/material.dart';

import '../../app/data/services/firebase_services/log_out_service.dart';
import '../../app/presentation/authentication/login/login.dart';
import '../constants.dart';
import '../size_configuration.dart';
import 'build_text_widget.dart';

class LogOutDialog extends StatelessWidget {
  const LogOutDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      actionsAlignment: MainAxisAlignment.center,
      content: createGeneralText(
        inputText: 'Are you sure you want to LOG OUT?',
        fontSize: 14,
        weight: FontWeight.w500,
        colorName: Palette.textColor,
        family: FontFamily.cabinetRegular,
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop(); // Close the dialog
            LogOut.logOut();
            Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(builder: (context) => const Login()),
                (route) => false);
          },
          child: Container(
            height: getProportionateScreenHeight(44),
            width: getProportionateScreenWidth(98),
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: const Color(0xffFCE4EB),
                borderRadius: BorderRadius.circular(8)),
            child: createGeneralText(
              inputText: 'Confirm',
              fontSize: 14,
              weight: FontWeight.w500,
              colorName: Palette.secondaryColor,
              family: FontFamily.cabinetRegular,
            ),
          ),
        ),
        TextButton(
          onPressed: () {
            Navigator.of(context).pop(); // Close the dialog
          },
          child: createGeneralText(
            inputText: 'No, Cancel',
            fontSize: 14,
            weight: FontWeight.w500,
            colorName: Palette.blackColor,
            family: FontFamily.cabinetRegular,
          ),
        ),
      ],
    );
  }
}
