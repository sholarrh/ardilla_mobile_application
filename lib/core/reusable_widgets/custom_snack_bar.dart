import 'package:flutter/material.dart';

import '../constants.dart';
import '../size_configuration.dart';
import 'custom_snackbar.dart';

void successTopSnackBar({
  required BuildContext context,
  required String message,
}) {
  showCustomSnackBar(
    context,
    Container(
      height: getProportionateScreenHeight(80),
      margin: EdgeInsets.only(
        left: getProportionateScreenWidth(24),
      ),
      padding: EdgeInsets.only(
        left: getProportionateScreenWidth(26),
        right: getProportionateScreenWidth(35),
      ),
      decoration: const BoxDecoration(
          color: Palette.snackbarSuccessColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            bottomLeft: Radius.circular(40),
          )),
      child: Scaffold(
        backgroundColor: Palette.snackbarSuccessColor,
        body: Align(
          alignment: Alignment.center,
          child: Row(
            children: [
              Icon(
                Icons.check_circle_rounded,
                color: Colors.green,
                size: getProportionateScreenWidth(30),
              ),
              SizedBox(width: getProportionateScreenWidth(10)),
              Expanded(
                child: Text(
                  message,
                  style: TextStyle(
                    fontFamily: FontFamily.cabinetMedium,
                    fontSize: getProportionateScreenWidth(14),
                    color: Palette.blackColor,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    ),
    displayDuration: const Duration(seconds: 3),
    dismissDirection: DismissDirection.horizontal,
    curve: Curves.easeIn,
    reverseCurve: Curves.easeOut,
  );
}


void failureTopSnackBar({
  required BuildContext context,
  required String message,
}) {
  showCustomSnackBar(
    context,
    Container(
      height: getProportionateScreenHeight(80),
      margin: EdgeInsets.only(
        left: getProportionateScreenWidth(24),
      ),
      padding: EdgeInsets.only(
        top: getProportionateScreenHeight(16),
        bottom: getProportionateScreenHeight(16),
        left: getProportionateScreenWidth(26),
        right: getProportionateScreenWidth(35),
      ),
      decoration: const BoxDecoration(
          color: Palette.snackbarFailureColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            bottomLeft: Radius.circular(40),
          )),
      child: Scaffold(
        backgroundColor: Palette.snackbarFailureColor,
        body: Center(
          child: Row(
            children: [
              Icon(
                Icons.cancel_rounded,
                color: Colors.red,
                size: getProportionateScreenWidth(30),
              ),
              SizedBox(width: getProportionateScreenWidth(10)),
              Expanded(
                child: Text(
                  message,
                  style: TextStyle(
                    fontFamily: FontFamily.cabinetMedium,
                    fontSize: getProportionateScreenWidth(14),
                    color: Palette.blackColor,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    ),
    displayDuration: const Duration(seconds: 3),
    dismissDirection: DismissDirection.horizontal,
    curve: Curves.easeIn,
    reverseCurve: Curves.easeOut,
  );
}

void warningTopSnackBar({
  required BuildContext context,
  required String message,
}) {
  showCustomSnackBar(
    context,
    Container(
      height: getProportionateScreenHeight(60),
      margin: EdgeInsets.only(
        left: getProportionateScreenWidth(24),
      ),
      padding: EdgeInsets.only(
        top: getProportionateScreenHeight(16),
        bottom: getProportionateScreenHeight(16),
        left: getProportionateScreenWidth(26),
        right: getProportionateScreenWidth(35),
      ),
      decoration: const BoxDecoration(
          color: Palette.snackbarWarningColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            bottomLeft: Radius.circular(40),
          )),
      child: Scaffold(
        backgroundColor: Palette.snackbarWarningColor,
        body: Row(
          children: [
            Icon(
              Icons.error_rounded,
              color: const Color(0xffC2B006),
              size: getProportionateScreenWidth(30),
            ),
            SizedBox(width: getProportionateScreenWidth(10)),
            Expanded(
              child: Text(
                message,
                style: TextStyle(
                  fontFamily: FontFamily.cabinetMedium,
                  fontSize: getProportionateScreenWidth(14),
                  color: Palette.blackColor,
                ),
              ),
            )
          ],
        ),
      ),
    ),
    displayDuration: const Duration(seconds: 3),
    dismissDirection: DismissDirection.horizontal,
    curve: Curves.easeIn,
    reverseCurve: Curves.easeOut,
  );
}
