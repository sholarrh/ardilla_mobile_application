
import 'package:ardilla_mobile_application/core/constants.dart';
import 'package:ardilla_mobile_application/core/size_configuration.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/reusable_widgets/build_text_widget.dart';

class BlueCard extends StatefulWidget {
  const BlueCard({Key? key}) : super(key: key);

  @override
  State<BlueCard> createState() => _BlueCardState();
}

class _BlueCardState extends State<BlueCard> {

  bool hideAmount = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: getProportionateScreenHeight(209.15),
      width: getProportionateScreenWidth(370.71),
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(25),
        vertical: getProportionateScreenHeight(35)
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(22.31),
        image: const DecorationImage(
            image: AssetImage('images/card 1.png')
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              createGeneralText(
                inputText: 'SAN',
                fontSize: 16,
                weight: FontWeight.w500,
                colorName: Palette.whiteColor,
                family: FontFamily.cabinetRegular,
                textAlign: TextAlign.center,
              ),
              SizedBox(width: getProportionateScreenWidth(20),),
              Container(
                height: getProportionateScreenHeight(16),
                width: getProportionateScreenWidth(49),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Palette.secondaryColor,
                  borderRadius: BorderRadius.circular(68.47),
                ),
                child: createGeneralText(
                  inputText: '+10.00%',
                  fontSize: 9,
                  weight: FontWeight.w700,
                  colorName: Palette.whiteColor,
                  family: FontFamily.cabinetRegular,
                  textAlign: TextAlign.center,
                ),
              )
            ],
          ),
          SizedBox(height: getProportionateScreenHeight(22),),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              createGeneralText(
                inputText: !hideAmount ? 'NGN 100,000.00' : '******',
                fontSize: 22,
                weight: FontWeight.w700,
                colorName: Palette.whiteColor,
                family: FontFamily.cabinetRegular,
                textAlign: TextAlign.center,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    hideAmount = !hideAmount;
                  });
                },
                child: Icon(
                  hideAmount ? CupertinoIcons.eye_slash : CupertinoIcons.eye,
                size: 20,
                  color: Palette.whiteColor,
                ),
              ),
            ],
          ),
          SizedBox(height: getProportionateScreenHeight(22),),
          createGeneralText(
            inputText: '**********',
            fontSize: 20,
            weight: FontWeight.w500,
            colorName: Palette.whiteColor,
            family: FontFamily.cabinetRegular,
            textAlign: TextAlign.center,
          ),
          Row(
            children: [
              createGeneralText(
                inputText: 'Generate Account Number',
                fontSize: 11,
                weight: FontWeight.w500,
                colorName: Palette.whiteColor,
                family: FontFamily.cabinetRegular,
                textAlign: TextAlign.center,
              ),
              SizedBox(width: getProportionateScreenWidth(9),),
              const Icon(
                Icons.arrow_circle_right,
                size: 17,
                color: Palette.whiteColor,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
