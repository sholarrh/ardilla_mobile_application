 import 'package:ardilla_mobile_application/app/presentation/authentication/sign_up/sign_up_1.3.dart';
import 'package:ardilla_mobile_application/core/constants.dart';
import 'package:flutter/material.dart';

import '../../../../core/reusable_widgets/back_button.dart';
import '../../../../core/reusable_widgets/build_button_widget.dart';
import '../../../../core/reusable_widgets/build_text_widget.dart';
import '../../../../core/size_configuration.dart';

class VerifyEmailAddress extends StatelessWidget {
   const VerifyEmailAddress({Key? key}) : super(key: key);

   @override
   Widget build(BuildContext context) {
     SizeConfig.init(context);
     return Scaffold(
       backgroundColor: Palette.whiteColor,
       body: SafeArea(
         child: SingleChildScrollView(
           child: Padding(
             padding:  EdgeInsets.symmetric(
               horizontal: getProportionateScreenWidth(35)
             ),
             child: Column(
               mainAxisAlignment: MainAxisAlignment.start,
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 SizedBox(height: getProportionateScreenHeight(27),),
                 const CustomBackButton(
                   color: Palette.blackColor,
                 ),
                 SizedBox(height: getProportionateScreenHeight(70),),
                 Image.asset('images/vectors.png'),
                 SizedBox(height: getProportionateScreenHeight(69),),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     createGeneralText(
                       inputText: 'Verify your email\naddress',
                       fontSize: 30,
                       weight: FontWeight.w700,
                       colorName: Palette.textColor,
                       family: FontFamily.cabinetBold,
                       textAlign: TextAlign.center,
                     ),
                   ],
                 ),
                 SizedBox(height: getProportionateScreenHeight(112),),
                 BuildButton(
                   onPressed: () {},
                   buttonText: 'Open Email App',
                   buttonTextColor: Palette.primaryColor,
                   buttonColor: Palette.whiteColor,
                   borderColor: Palette.primaryColor,
                 ),
                 SizedBox(height: getProportionateScreenHeight(26),),
                 BuildButton(
                   onPressed: () {
                     Navigator.push(
                         context,
                         MaterialPageRoute(
                             builder: (context) => const CompleteYourProfile()
                         )
                     );
                   },
                   buttonText: 'Continue',
                   buttonTextColor: Palette.whiteColor,
                   buttonColor: Palette.primaryColor,
                   borderColor: Palette.gray200Color,
                 ),
               ],
             ),
           ),
         ),
       ),
     );
   }
 }
