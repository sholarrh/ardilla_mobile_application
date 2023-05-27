

import 'package:flutter/material.dart';

import '../../../core/constants.dart';
import '../../../core/reusable_widgets/build_text_widget.dart';
import '../../../core/size_configuration.dart';

class Explore extends StatelessWidget {
  const Explore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        createGeneralText(
          inputText: 'Explore',
          fontSize: 16,
          weight: FontWeight.w500,
          colorName: Palette.textColor,
          family: FontFamily.cabinetRegular,
          textAlign: TextAlign.center,
        ),
        SizedBox(height: getProportionateScreenHeight(20),),
         SizedBox(
           height: getProportionateScreenHeight(198),
           width: getProportionateScreenWidth(1069),
           child: ListView(
             shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            children: [
              Container(
                height: getProportionateScreenHeight(198),
                width: getProportionateScreenWidth(1069),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/explore.png')
                    )
                ),
              ),
            ]
        ),
         )
      ],
    );
  }
}
