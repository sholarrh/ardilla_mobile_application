

import 'package:ardilla_mobile_application/core/constants.dart';
import 'package:ardilla_mobile_application/core/size_configuration.dart';
import 'package:flutter/material.dart';

import '../../../core/reusable_widgets/build_quick_links_containers.dart';
import '../../../core/reusable_widgets/build_text_widget.dart';

class QuickLinkRow extends StatelessWidget {
  const QuickLinkRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        createGeneralText(
          inputText: 'Quick Links',
          fontSize: 14,
          weight: FontWeight.w500,
          colorName: Palette.textColor,
          family: FontFamily.cabinetRegular,
          textAlign: TextAlign.center,
        ),
        SizedBox(height: getProportionateScreenHeight(22),),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const QuickLinkContainer(
                color: Palette.primaryColor,
                image: 'images/SAN icon.png',
                title: 'SAN',
              ),
              SizedBox(width: getProportionateScreenWidth(20),),
              const QuickLinkContainer(
                color: Palette.secondaryColor,
                image: 'images/save icon.png',
                title: 'Save',
              ),
              SizedBox(width: getProportionateScreenWidth(20),),
              const QuickLinkContainer(
                color: Palette.teal500Color,
                image: 'images/book icon.png',
                title: 'Learn',
              ),
              SizedBox(width: getProportionateScreenWidth(20),),
              const QuickLinkContainer(
                color: Palette.yellow400Color,
                image: 'images/payment icon.png',
                title: 'Payment',
              ),

            ],
        ),
      ],
    );
  }
}
