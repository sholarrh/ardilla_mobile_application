
import 'package:flutter/material.dart';

import '../../../../core/constants.dart';
import '../../../../core/reusable_widgets/back_button.dart';
import '../../../../core/reusable_widgets/build_button_widget.dart';
import '../../../../core/reusable_widgets/build_text_form_field.dart';
import '../../../../core/reusable_widgets/build_text_widget.dart';
import '../../../../core/reusable_widgets/validator.dart';
import '../../../../core/size_configuration.dart';
import '../../../data/data_storage/user_profile_storage.dart';
import '../../../data/models/user_model.dart';
import '../../../data/services/firebase_services/create_user.dart';
import '../login/login.dart';

class CompleteYourProfile extends StatefulWidget {
  const CompleteYourProfile({Key? key, required this.email}) : super(key: key);

  final String email;

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
  bool _isObscured = true;

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      backgroundColor: Palette.whiteColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(35)),
            child: Form(
              key: _createAccountKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: getProportionateScreenHeight(27),
                  ),
                  const CustomBackButton(
                    color: Palette.blackColor,
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(22),
                  ),
                  createGeneralText(
                    inputText: 'Complete your\nprofile',
                    fontSize: 36,
                    weight: FontWeight.w700,
                    colorName: Palette.textColor,
                    family: FontFamily.cabinetBold,
                    textAlign: TextAlign.start,
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(43),
                  ),
                  InputField(
                    inputController: _userNameController,
                    inputHintText: 'Username',
                    keyboardType: TextInputType.name,
                    prefixIcon: const Icon(
                      Icons.code_off_outlined,
                    ),
                    validator: (value) =>
                        Validator.validateInput(value ?? ''),
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(20),
                  ),
                  InputField(
                    inputController: _firstNameController,
                    inputHintText: 'First Name',
                    keyboardType: TextInputType.name,
                    prefixIcon: const Icon(
                      Icons.person_outline_rounded,
                    ),
                    validator: (value) =>
                        Validator.validateInput(value ?? ''),
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(20),
                  ),
                  InputField(
                    inputController: _lastNameController,
                    inputHintText: 'Last Name',
                    keyboardType: TextInputType.name,
                    prefixIcon: const Icon(
                      Icons.person_outline_rounded,
                    ),
                    validator: (value) =>
                        Validator.validateInput(value ?? ''),
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(20),
                  ),
                  InputField(
                    inputController: _phoneNumberController,
                    inputHintText: 'Phone Number',
                    keyboardType: TextInputType.number,
                    maxLength: 11,
                    prefixIcon: const Icon(
                      Icons.smartphone_outlined,
                    ),
                    validator: (value) =>
                        Validator.validateInput(value ?? ''),
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(20),
                  ),
                  InputField(
                    inputController: _inviteCodeController,
                    inputHintText: 'Invite code (optional)',
                    keyboardType: TextInputType.name,
                    prefixIcon: const Icon(
                      Icons.people_alt_outlined,
                    ),
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(20),
                  ),
                  BuildPasswordInputField(
                    isObscured: _isObscured,
                    inputController: _passwordController,
                    inputHintText: 'Password',
                    prefixIcon: const Icon(
                      Icons.lock_outline_rounded,
                    ),
                    onPressed: () {
                      setState(() {
                        _isObscured = !_isObscured;
                      });
                    },
                    validator: (value) =>
                        Validator.validatePassword(value ?? ''),
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(30),
                  ),
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
                  SizedBox(
                    height: getProportionateScreenHeight(33),
                  ),
                  BuildButton(
                    onPressed: () {
                      _doCreateAccount();
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

  void _doCreateAccount() async {
    if (_createAccountKey.currentState?.validate() ?? false) {
      _createAccountKey.currentState?.save();

      await UserProfileStorage.storeUserName(_userNameController.text);
      await UserProfileStorage.storeFirstName(_firstNameController.text);
      await UserProfileStorage.storeLastName(_lastNameController.text);

      final user = UserModel(
                  email: widget.email,
                  userName: _userNameController.text,
                  firstName: _firstNameController.text,
                  lastName: _lastNameController.text,
                  phoneNumber: _phoneNumberController.text,
                  inviteCode: _inviteCodeController.text,
                );

      CreateUser.createUserAndSaveData(
          email: widget.email,
          password: _passwordController.text,
          data: user.toJson(),
      );
      if (!mounted) return;
      Navigator.push(
                 context, MaterialPageRoute(builder: (context) => const Login()));
      print('something');
    }
  }

  }