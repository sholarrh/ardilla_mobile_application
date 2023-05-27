import 'package:ardilla_mobile_application/core/constants.dart';
import 'package:flutter/material.dart';

import '../../../../core/size_configuration.dart';

class SANButton extends StatelessWidget {
  const SANButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getProportionateScreenHeight(57),
      width: getProportionateScreenWidth(360),
      child: ElevatedButton(
        onPressed: (){},
        style: ElevatedButton.styleFrom(
            elevation: 0,
            backgroundColor: Palette.whiteColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(88.77),
                side: const BorderSide(color: Palette.primaryColor)
            )
        ),
        child: Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: getProportionateScreenHeight(21),
                width: getProportionateScreenWidth(21),
                child: Image.asset('images/san button icon.png')),
            SizedBox(width: getProportionateScreenWidth(15),),
            Text(
              'Sign in with SAN ID',
              style: TextStyle(
                color: Palette.primaryColor,
                fontSize: getProportionateScreenWidth(15),
                fontWeight: FontWeight.w700,
                fontFamily:  FontFamily.cabinetRegular,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
