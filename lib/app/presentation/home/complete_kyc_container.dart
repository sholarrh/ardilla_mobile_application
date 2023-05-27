

import 'package:ardilla_mobile_application/core/constants.dart';
import 'package:ardilla_mobile_application/core/size_configuration.dart';
import 'package:flutter/material.dart';

import '../../../core/reusable_widgets/build_text_widget.dart';

class CompleteKYCContainer extends StatelessWidget {
  const CompleteKYCContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getProportionateScreenHeight(106),
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        vertical: getProportionateScreenHeight(8),
      ),
      decoration: BoxDecoration(
        color: Palette.f9Color,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              right: getProportionateScreenWidth(25),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(
                  Icons.arrow_drop_up,
                color: Palette.green500Color,
                size: getProportionateScreenWidth(20),
                ),
                SizedBox(width: getProportionateScreenWidth(4),),
                createGeneralText(
                  inputText: '10.00%',
                  fontSize: 10,
                  weight: FontWeight.w500,
                  colorName: Palette.green500Color,
                  family: FontFamily.cabinetRegular,
                  textAlign: TextAlign.center,
                ),
                SizedBox(width: getProportionateScreenWidth(4),),
                createGeneralText(
                  inputText: 'Cashflow',
                  fontSize: 10,
                  weight: FontWeight.w500,
                  colorName: Palette.textColor,
                  family: FontFamily.cabinetRegular,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: getProportionateScreenWidth(24),
            ),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    createGeneralText(
                      inputText: '80%',
                      fontSize: 24,
                      weight: FontWeight.w500,
                      colorName: Palette.gray500Color,
                      family: FontFamily.cabinetRegular,
                      textAlign: TextAlign.center,
                    ),
                    Row(
                      children: [
                        createGeneralText(
                          inputText: 'Complete KYC',
                          fontSize: 10,
                          weight: FontWeight.w500,
                          colorName: Palette.primaryColor,
                          family: FontFamily.cabinetRegular,
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(width: getProportionateScreenWidth(5),),
                        Icon(Icons.arrow_forward_ios,
                        size: getProportionateScreenWidth(9),
                        color: Palette.primaryColor,
                        )
                      ],
                    ),
                    SizedBox(height: getProportionateScreenHeight(7),),
                    Row(
                      children: [
                        Container(
                          height: getProportionateScreenHeight(3.32),
                          width: getProportionateScreenWidth(49.75),
                          decoration: BoxDecoration(
                              color: Palette.primaryColor,
                              borderRadius: BorderRadius.circular(100)
                          ),
                        ),
                        Container(
                          height: getProportionateScreenHeight(3.32),
                          width: getProportionateScreenWidth(17),
                          decoration: BoxDecoration(
                              color: Palette.gray200Color,
                              borderRadius: BorderRadius.circular(100)
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(width: getProportionateScreenWidth(18),),
                Container(
                  height: getProportionateScreenHeight(34),
                  width: getProportionateScreenWidth(2),
                  color: Palette.gray200Color,
                ),
                SizedBox(width: getProportionateScreenWidth(20),),
                Expanded(
                  child: SizedBox(
                    height: getProportionateScreenHeight(38.5),
                    width: getProportionateScreenWidth(230),
                    child: Image.asset('images/chart.png'),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              right: getProportionateScreenWidth(25),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: getProportionateScreenHeight(12),
                  width: getProportionateScreenWidth(12),
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                      color: Palette.secondaryColor,
                      shape: BoxShape.circle,
                  ),
                  child: Icon(
                      Icons.check,
                    size: getProportionateScreenWidth(6),
                    color: Palette.whiteColor,
                  ),
                ),
                SizedBox(width: getProportionateScreenWidth(5),),
                createGeneralText(
                  inputText: 'Inflow',
                  fontSize: 10,
                  weight: FontWeight.w500,
                  colorName: Palette.textColor,
                  family: FontFamily.cabinetRegular,
                  textAlign: TextAlign.center,
                ),
                SizedBox(width: getProportionateScreenWidth(18),),
                Container(
                  height: getProportionateScreenHeight(12),
                  width: getProportionateScreenWidth(12),
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                    color: Palette.primaryColor,
                    shape: BoxShape.circle,
                  ),
                ),
                SizedBox(width: getProportionateScreenWidth(5),),
                createGeneralText(
                  inputText: 'Outflow',
                  fontSize: 10,
                  weight: FontWeight.w500,
                  colorName: Palette.textColor,
                  family: FontFamily.cabinetRegular,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
