

import 'package:flutter/material.dart';

import '../../../../core/constants.dart';
import '../../../../core/reusable_widgets/back_button.dart';
import '../../../../core/reusable_widgets/build_button_widget.dart';
import '../../../../core/reusable_widgets/build_text_form_field.dart';
import '../../../../core/reusable_widgets/build_text_widget.dart';
import '../../../../core/reusable_widgets/validator.dart';
import '../../../../core/size_configuration.dart';

class CompleteYourProfile extends StatefulWidget {
  const CompleteYourProfile({Key? key}) : super(key: key);

  @override
  State<CompleteYourProfile> createState() => _CompleteYourProfileState();
}

class _CompleteYourProfileState extends State<CompleteYourProfile> {

  final TextEditingController _userNameController = TextEditingController();
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _inviteCodeController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final GlobalKey<FormState> _createAccountKey = GlobalKey<FormState>();

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
            child: Form(
              key: _createAccountKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: getProportionateScreenHeight(27),),
                  const CustomBackButton(
                    color: Palette.blackColor,
                  ),
                  SizedBox(height: getProportionateScreenHeight(22),),
                  createGeneralText(
                    inputText: 'Complete your\nprofile',
                    fontSize: 36,
                    weight: FontWeight.w700,
                    colorName: Palette.textColor,
                    family: FontFamily.cabinetBold,
                    textAlign: TextAlign.start,
                  ),
                  SizedBox(height: getProportionateScreenHeight(43),),
                  InputField(
                    inputController: _userNameController,
                    inputHintText: 'Username',
                    keyboardType: TextInputType.name,
                    prefixIcon: const Icon(
                      Icons.email_outlined,
                    ),
                  ),
                  SizedBox(height: getProportionateScreenHeight(20),),
                  InputField(
                    inputController: _firstNameController,
                    inputHintText: 'First Name',
                    keyboardType: TextInputType.name,
                    prefixIcon: const Icon(
                      Icons.email_outlined,
                    ),
                  ),
                  SizedBox(height: getProportionateScreenHeight(20),),
                  InputField(
                    inputController: _lastNameController,
                    inputHintText: 'Last Name',
                    keyboardType: TextInputType.name,
                    prefixIcon: const Icon(
                      Icons.email_outlined,
                    ),
                  ),
                  SizedBox(height: getProportionateScreenHeight(20),),
                  InputField(
                    inputController: _phoneNumberController,
                    inputHintText: 'Phone Number',
                    keyboardType: TextInputType.number,
                    prefixIcon: const Icon(
                      Icons.email_outlined,
                    ),
                  ),
                  SizedBox(height: getProportionateScreenHeight(20),),
                  InputField(
                    inputController: _inviteCodeController,
                    inputHintText: 'Invite code (optional)',
                    keyboardType: TextInputType.name,
                    prefixIcon: const Icon(
                      Icons.email_outlined,
                    ),
                  ),
                  SizedBox(height: getProportionateScreenHeight(20),),
                  InputField(
                    inputController: _passwordController,
                    inputHintText: 'Password',
                    keyboardType: TextInputType.name,
                    prefixIcon: const Icon(
                      Icons.email_outlined,
                    ),
                  ),
                  SizedBox(height: getProportionateScreenHeight(30),),
                  RichText(
                    text: const TextSpan(
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: Palette.gray400Color,
                        fontFamily: FontFamily.cabinetRegular,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'By Signing Up , You’re agreeing to our ',
                        ),
                        TextSpan(
                          text: 'Terms and\nConditions ',
                          style: TextStyle(
                            color: Palette.primaryColor,
                          ),
                        ),
                        TextSpan(
                          text: 'and ',
                          style: TextStyle(
                            color: Palette.gray400Color,
                          ),
                        ),
                        TextSpan(
                          text: 'Privacy Policy',
                          style: TextStyle(
                            color: Palette.primaryColor,
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: getProportionateScreenHeight(33),),
                  BuildButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const CompleteYourProfile()
                          )
                      );
                    },
                    buttonText: 'Create Account',
                    buttonTextColor: Palette.whiteColor,
                    buttonColor: Palette.primaryColor,
                    borderColor: Palette.gray200Color,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
