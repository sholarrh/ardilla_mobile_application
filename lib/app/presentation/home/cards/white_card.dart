


import 'package:flutter/cupertino.dart';

import '../../../../core/constants.dart';
import '../../../../core/reusable_widgets/build_text_widget.dart';
import '../../../../core/size_configuration.dart';

class WhiteCard extends StatefulWidget {
  const WhiteCard({Key? key}) : super(key: key);

  @override
  State<WhiteCard> createState() => _WhiteCardState();
}

class _WhiteCardState extends State<WhiteCard> {

  bool hideAmount = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getProportionateScreenHeight(209.15),
      width: getProportionateScreenWidth(370.71),
      padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(25),
          vertical: getProportionateScreenHeight(34)
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22.31),
        color: Palette.whiteColor,
        border: Border.all(
          width: 1.66,
          color: Palette.primaryColor.withOpacity(0.10)
        )
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          createGeneralText(
            inputText: 'Total Funds',
            fontSize: 16,
            weight: FontWeight.w500,
            colorName: Palette.textColor,
            family: FontFamily.cabinetRegular,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: getProportionateScreenHeight(22),),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              createGeneralText(
                inputText: !hideAmount ? 'NGN 400,000.00' : '******',
                fontSize: 22,
                weight: FontWeight.w700,
                colorName: Palette.textColor,
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
                  color: Palette.textColor.withOpacity(0.50),
                ),
              ),
            ],
          ),
          SizedBox(height: getProportionateScreenHeight(38),),
          Row(
            children: [
              Container(
                height: getProportionateScreenHeight(30),
                width: getProportionateScreenWidth(72),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Palette.textColor.withOpacity(0.11),
                  borderRadius: BorderRadius.circular(119.73),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    createGeneralText(
                      inputText: 'NGN',
                      fontSize: 9,
                      weight: FontWeight.w700,
                      colorName: Palette.textColor.withOpacity(0.30),
                      family: FontFamily.cabinetRegular,
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(width: getProportionateScreenWidth(5),),
                    Container(
                      height: getProportionateScreenHeight(14),
                      width: getProportionateScreenWidth(33),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Palette.whiteColor,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: createGeneralText(
                        inputText: 'USD',
                        fontSize: 8,
                        weight: FontWeight.w500,
                        colorName: Palette.textColor,
                        family: FontFamily.cabinetRegular,
                        textAlign: TextAlign.center,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(width: getProportionateScreenWidth(6),),
              createGeneralText(
                inputText: '₦740 /\$1',
                fontSize: 9,
                weight: FontWeight.w700,
                colorName: const Color(0xffB69FC9),
                family: FontFamily.cabinetRegular,
                textAlign: TextAlign.center,
              ),
              SizedBox(width: getProportionateScreenWidth(6),),

            ],
          ),
        ],
      ),
    );
  }
}
