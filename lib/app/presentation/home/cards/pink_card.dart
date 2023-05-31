
import 'package:flutter/cupertino.dart';

import '../../../../core/constants.dart';
import '../../../../core/reusable_widgets/build_text_widget.dart';
import '../../../../core/size_configuration.dart';

class PinkCard extends StatefulWidget {
  const PinkCard({Key? key}) : super(key: key);

  @override
  State<PinkCard> createState() => _PinkCardState();
}

class _PinkCardState extends State<PinkCard> {

  bool hideAmount = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Stack(
        children: [
          Container(
            height: getProportionateScreenHeight(224.15),
            width: getProportionateScreenWidth(374.71),
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(25),
                vertical: getProportionateScreenHeight(35)
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22.31),
              image: const DecorationImage(
                image: AssetImage('images/card 2.png')
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                createGeneralText(
                  inputText: 'Dilla Wallet',
                  fontSize: 16,
                  weight: FontWeight.w500,
                  colorName: Palette.whiteColor,
                  family: FontFamily.cabinetRegular,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: getProportionateScreenHeight(22),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    createGeneralText(
                      inputText: !hideAmount ? 'USD 10,000.00' : '******',
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
                SizedBox(height: getProportionateScreenHeight(40),),
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
                            colorName: Palette.whiteColor,
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
                      colorName: Palette.whiteColor,
                      family: FontFamily.cabinetRegular,
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(width: getProportionateScreenWidth(6),),
                   
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            top: getProportionateScreenHeight(132.79),
            left: getProportionateScreenWidth(240.54),
            child: Container(
              height: getProportionateScreenHeight(37.62),
              width: getProportionateScreenWidth(99.26),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Palette.whiteColor,
                borderRadius: BorderRadius.circular(110.66),
              ),
              child: createGeneralText(
                inputText: 'Add Money',
                fontSize: 11,
                weight: FontWeight.w700,
                colorName: Palette.textColor,
                family: FontFamily.cabinetRegular,
                textAlign: TextAlign.center,
              ),
            ),
          )
        ],
      ),
    );
  }
}
