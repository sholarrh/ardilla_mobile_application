import 'package:ardilla_mobile_application/app/presentation/authentication/login/login.dart';
import 'package:ardilla_mobile_application/app/presentation/authentication/sign_up/sign_up_1.0/purple_row.dart';
import 'package:ardilla_mobile_application/app/presentation/authentication/sign_up/sign_up_1.0/sign_up_1.0_heading.dart';
import 'package:ardilla_mobile_application/core/constants.dart';
import 'package:ardilla_mobile_application/core/reusable_widgets/validator.dart';
import 'package:ardilla_mobile_application/core/size_configuration.dart';
import 'package:flutter/material.dart';

import '../../../../../core/reusable_widgets/build_button_widget.dart';
import '../../../../../core/reusable_widgets/build_text_form_field.dart';
import '../../../../../core/reusable_widgets/build_text_widget.dart';
import '../sign_up_1.2.dart';

class GetStartedScreen extends StatefulWidget {
  const GetStartedScreen({Key? key}) : super(key: key);

  @override
  State<GetStartedScreen> createState() => _GetStartedScreenState();
}

class _GetStartedScreenState extends State<GetStartedScreen> {
  final TextEditingController _emailController = TextEditingController();
  final GlobalKey<FormState> _emailKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Palette.primaryColor,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Heading(),
            const PurpleRow(),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: getProportionateScreenHeight(730),
                width: double.infinity,
                decoration: const BoxDecoration(
                    color: Palette.whiteColor,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: getProportionateScreenHeight(70),
                      right: getProportionateScreenWidth(35),
                      left: getProportionateScreenWidth(35),
                    ),
                    child: Form(
                      key: _emailKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          createGeneralText(
                            inputText: 'Get Started',
                            fontSize: 36,
                            weight: FontWeight.w700,
                            colorName: Palette.textColor,
                            family: FontFamily.cabinetBold,
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            height: getProportionateScreenHeight(12),
                          ),
                          createGeneralText(
                            inputText:
                                'To Create an account enter a valid email address',
                            fontSize: 12,
                            weight: FontWeight.w400,
                            colorName: Palette.gray500Color,
                            family: FontFamily.cabinetRegular,
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            height: getProportionateScreenHeight(35),
                          ),
                          InputField(
                            inputController: _emailController,
                            inputHintText: 'Email address',
                            keyboardType: TextInputType.name,
                            prefixIcon: const Icon(
                              Icons.email_outlined,
                            ),
                            validator: (value) =>
                                Validator.validateEmail(value ?? ''),
                          ),
                          SizedBox(
                            height: getProportionateScreenHeight(276),
                          ),
                          BuildButton(
                            onPressed: () {
                              _doEmailVerification();
                            },
                            buttonText: 'Continue',
                            buttonTextColor: Palette.whiteColor,
                            buttonColor: Palette.primaryColor,
                            borderColor: Palette.gray200Color,
                          ),
                          SizedBox(
                            height: getProportionateScreenHeight(47),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              createGeneralText(
                                inputText: 'Already have an account? ',
                                fontSize: 12,
                                weight: FontWeight.w500,
                                colorName: Palette.gray500Color,
                                family: FontFamily.cabinetRegular,
                                textAlign: TextAlign.center,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => const Login()));
                                },
                                child: createGeneralText(
                                  inputText: 'Sign in',
                                  fontSize: 12,
                                  weight: FontWeight.w500,
                                  colorName: Palette.primaryColor,
                                  family: FontFamily.cabinetRegular,
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _doEmailVerification() async {
    if (_emailKey.currentState?.validate() ?? false) {
      _emailKey.currentState?.save();

      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => VerifyEmailAddress(
                    email: _emailController.text,
                  )));
    } else {
      // failureTopSnackBar(
      //   context: context,
      //   message: response.responseMessage.toString() == 'null'
      //       ? 'Error, check your inputs'
      //       : response.responseMessage.toString(),
      // );
    }
  }
}
