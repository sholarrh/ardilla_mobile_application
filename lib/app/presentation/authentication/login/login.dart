

import 'package:ardilla_mobile_application/app/presentation/authentication/login/sign_in_with_san_button.dart';
import 'package:ardilla_mobile_application/app/presentation/authentication/sign_up/sign_up_1.0/purple_row.dart';
import 'package:ardilla_mobile_application/app/presentation/authentication/sign_up/sign_up_1.0/sign_up_1.0.dart';
import 'package:ardilla_mobile_application/app/presentation/authentication/sign_up/sign_up_1.0/sign_up_1.0_heading.dart';
import 'package:ardilla_mobile_application/app/presentation/home/dashboard.dart';
import 'package:flutter/material.dart';

import '../../../../core/constants.dart';
import '../../../../core/reusable_widgets/build_button_widget.dart';
import '../../../../core/reusable_widgets/build_text_form_field.dart';
import '../../../../core/reusable_widgets/build_text_widget.dart';
import '../../../../core/reusable_widgets/validator.dart';
import '../../../../core/size_configuration.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final GlobalKey<FormState> _loginKey = GlobalKey<FormState>();

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
                      key: _loginKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          createGeneralText(
                            inputText: 'Welcome !',
                            fontSize: 36,
                            weight: FontWeight.w700,
                            colorName: Palette.textColor,
                            family: FontFamily.cabinetBold,
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            height: getProportionateScreenHeight(8),
                          ),
                          createGeneralText(
                            inputText:
                            'Here’s how to Log in to access your account',
                            fontSize: 12,
                            weight: FontWeight.w400,
                            colorName: Palette.gray500Color,
                            family: FontFamily.cabinetRegular,
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(height: getProportionateScreenHeight(35),),
                          InputField(
                            inputController: _emailController,
                            inputHintText: 'Email address',
                            keyboardType: TextInputType.name,
                            prefixIcon: const Icon(
                              Icons.email_outlined,
                            ),
                            validator: (value) => Validator.validateEmail(value ?? ''),
                          ),
                          SizedBox(height: getProportionateScreenHeight(20),),
                          InputField(
                            inputController: _passwordController,
                            inputHintText: 'Password',
                            keyboardType: TextInputType.name,
                            prefixIcon: const Icon(
                              Icons.lock_outline_rounded,
                            ),
                            validator: (value) => Validator.validatePassword(value ?? ''),
                          ),
                          SizedBox(height: getProportionateScreenHeight(12),),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              createGeneralText(
                                inputText:
                                'Forgot Password?',
                                fontSize: 11,
                                weight: FontWeight.w500,
                                colorName: Palette.primaryColor,
                                family: FontFamily.cabinetRegular,
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                          SizedBox(height: getProportionateScreenHeight(32),),
                          BuildButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const DashBoard()
                                  )
                              );
                            },
                            buttonText: 'Log In',
                            buttonTextColor: Palette.whiteColor,
                            buttonColor: Palette.primaryColor,
                            borderColor: Palette.gray200Color,
                          ),
                          SizedBox(
                            height: getProportionateScreenHeight(74),
                          ),
                          const SANButton(),
                          SizedBox(
                            height: getProportionateScreenHeight(30),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              createGeneralText(
                                inputText: 'New user? ',
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
                                          builder: (context) => const GetStartedScreen()
                                      )
                                  );
                                },
                                child: createGeneralText(
                                  inputText: 'Create Account',
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
}
