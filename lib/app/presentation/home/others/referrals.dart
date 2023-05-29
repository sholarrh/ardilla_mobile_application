

import 'package:flutter/cupertino.dart';

import '../../../../core/constants.dart';
import '../../../../core/reusable_widgets/build_text_widget.dart';
import '../../../../core/size_configuration.dart';

class Referrals extends StatelessWidget {
  const Referrals({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        createGeneralText(
          inputText: 'Referrals',
          fontSize: 16,
          weight: FontWeight.w500,
          colorName: Palette.textColor,
          family: FontFamily.cabinetRegular,
          textAlign: TextAlign.center,
        ),
        SizedBox(height: getProportionateScreenHeight(20),),
        Container(
          height: getProportionateScreenHeight(191),
          width: getProportionateScreenWidth(335),
          padding: EdgeInsets.only(
              top: getProportionateScreenHeight(32),
              left: getProportionateScreenWidth(23)
          ),
          decoration: BoxDecoration(
            image: const DecorationImage(
              image: AssetImage('images/referrals.png'),
            ),
            borderRadius: BorderRadius.circular(7),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              createGeneralText(
                inputText: 'Refer & Earn',
                fontSize: 20,
                weight: FontWeight.w700,
                colorName: Palette.textColor,
                family: FontFamily.cabinetRegular,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: getProportionateScreenHeight(21),),
              createGeneralText(
                inputText: 'Invite using your Kode Hex.',
                fontSize: 10,
                weight: FontWeight.w400,
                colorName: Palette.textColor,
                family: FontFamily.cabinetRegular,
                textAlign: TextAlign.start,
              ),
              SizedBox(height: getProportionateScreenHeight(36,),),
              Row(
                children: [
                  createGeneralText(
                    inputText: 'Click here',
                    fontSize: 10,
                    weight: FontWeight.w500,
                    colorName: const Color(0xff8E15F8),
                    family: FontFamily.cabinetRegular,
                    textAlign: TextAlign.start,
                  ),
                  SizedBox(width: getProportionateScreenWidth(9),),
                  const Icon(
                      CupertinoIcons.arrow_right,
                  size: 14,
                  color: Color(0xff8E15F8),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
