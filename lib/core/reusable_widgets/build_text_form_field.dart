import 'package:flutter/material.dart';

import '../constants.dart';
import '../size_configuration.dart';

class InputField extends StatefulWidget {

  const InputField(
      {Key? key,
      required this.inputController,
      required this.inputHintText,
      required this.keyboardType,
      this.onChanged,
        this.prefixIcon,
        this.validator,
        this.maxLength
      })
      : super(key: key);

  final TextEditingController inputController;
  final String inputHintText;
  final TextInputType keyboardType;
  final void Function(String)? onChanged;
  final Widget? prefixIcon;
  final String? Function(String?)? validator;
  final int? maxLength;

  @override
  State<InputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {

  final FocusNode _focusNode = FocusNode();
  bool _isFocused = false;

  @override
  void initState() {
    super.initState();

    _focusNode.addListener(() {
      setState(() {
        _isFocused = _focusNode.hasFocus;
      });
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getProportionateScreenHeight(55),
      child: TextFormField(
        focusNode: _focusNode,
        controller: widget.inputController,
        maxLength: widget.maxLength,
        keyboardType: widget.keyboardType,
        cursorColor: Palette.blackColor,
        autovalidateMode: AutovalidateMode.disabled,
        validator: widget.validator,
        style: TextStyle(
          fontFamily: FontFamily.cabinetRegular,
          fontSize: getProportionateScreenWidth(14),
          fontWeight: FontWeight.w400,
          color: Palette.primaryColor,
        ),
        decoration: InputDecoration(
          filled: true,
          fillColor: Palette.whiteColor,
          prefixIcon: widget.prefixIcon,
          prefixIconColor: _isFocused ? Palette.primaryColor : Palette.gray400Color,
          border: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Palette.gray400Color,
            ),
            borderRadius: BorderRadius.all(Radius.circular(6)),
          ),
          errorStyle: const TextStyle(
              fontSize: 10
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              width: 2,
              color: Palette.primaryColor,
            ),
            borderRadius: BorderRadius.all(Radius.circular(6)),
          ),
          hintText: widget.inputHintText,
          hintStyle: TextStyle(
              fontFamily: FontFamily.cabinetRegular,
              fontSize: getProportionateScreenWidth(12),
              fontWeight: FontWeight.w400,
              color: Palette.gray400Color,
          ),
          counterText: '',
        ),
        //validator: (value) => Validator.validateEmail(value ?? ''),
        onChanged: (value) {},
      ),
    );
  }
}

class BuildPasswordInputField extends StatefulWidget {
  const BuildPasswordInputField(
      {super.key, required this.inputController,
        required this.inputHintText,
        required this.isObscured,
        required this.onPressed,
        this.onFieldSubmitted,
        this.onChanged,
        this.onTap,
        this.validator, this.prefixIcon,
      });

  final TextEditingController inputController;
  final String inputHintText;
  final bool isObscured;
  final String? Function(String?)? validator;
  final Function(String)? onFieldSubmitted;
  final void Function(String)? onChanged;
  final void Function()? onTap;
  final VoidCallback onPressed;
  final Widget? prefixIcon;

  @override
  State<BuildPasswordInputField> createState() =>
      _BuildPasswordInputFieldState();
}

class _BuildPasswordInputFieldState extends State<BuildPasswordInputField> {
  bool showHint = false;
  RegExp passwordValid = RegExp(r'(?=.*[a-z])');
  RegExp passwordValid2 = RegExp(r'(?=.*[A-Z])');
  RegExp passwordValid3 = RegExp(r'(?=.*[0-9])');
  RegExp passwordValid4 = RegExp(r'(?=.*[^A-Za-z0-9])');
  RegExp passwordValid5 = RegExp(r'(?=.{8,})');

  bool validatePassword(String pass) {
    String password = pass.trim();
    if (passwordValid.hasMatch(password)) {
      return true;
    } else {
      return false;
    }
  }

  bool validatePassword2(String pass) {
    String password = pass.trim();
    if (passwordValid2.hasMatch(password)) {
      return true;
    } else {
      return false;
    }
  }

  bool validatePassword3(String pass) {
    String password = pass.trim();
    if (passwordValid3.hasMatch(password)) {
      return true;
    } else {
      return false;
    }
  }

  bool validatePassword4(String pass) {
    String password = pass.trim();
    if (passwordValid4.hasMatch(password)) {
      return true;
    } else {
      return false;
    }
  }

  bool validatePassword5(String pass) {
    String password = pass.trim();
    if (passwordValid5.hasMatch(password)) {
      return true;
    } else {
      return false;
    }
  }

  final FocusNode _focusNode = FocusNode();
  bool _isFocused = false;

  @override
  void initState() {
    super.initState();

    _focusNode.addListener(() {
      setState(() {
        _isFocused = _focusNode.hasFocus;
      });
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getProportionateScreenHeight(55),
      child: TextFormField(
        controller: widget.inputController,
        autofocus: false,
        obscureText: widget.isObscured ? true : false,
        cursorColor: Palette.blackColor,
        keyboardType: TextInputType.text,
        autocorrect: false,
        decoration: InputDecoration(
          filled: true,
          isDense: true,
          fillColor: Palette.whiteColor,
          suffix: GestureDetector(
            onTap: widget.onPressed,
            child: Padding(
              padding:
              EdgeInsets.only(right: getProportionateScreenWidth(10)),
              child: Icon(
                widget.isObscured ? Icons.visibility : Icons.visibility_off,
                color: Palette.gray400Color,
                size: getProportionateScreenWidth(22),
              ),
            ),
          ),
          hintText: widget.inputHintText,
          hintStyle: TextStyle(
            fontFamily: FontFamily.cabinetRegular,
            fontSize: getProportionateScreenWidth(12),
            fontWeight: FontWeight.w400,
            color: Palette.gray400Color,
          ),
          errorStyle: const TextStyle(
            fontSize: 10
          ),
          errorBorder:  const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.red,
            ),
            borderRadius: BorderRadius.all(Radius.circular(6)),
          ),
          prefixIcon: widget.prefixIcon,
          prefixIconColor: _isFocused ? Palette.primaryColor : Palette.gray400Color,
          border: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Palette.gray400Color,
            ),
            borderRadius: BorderRadius.all(Radius.circular(6)),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              width: 2,
              color: Palette.primaryColor,
            ),
            borderRadius: BorderRadius.all(Radius.circular(6)),
          ),
          // errorBorder: const OutlineInputBorder(
          //   borderSide: BorderSide(
          //     width: 2,
          //     color: Palette.primaryColor,
          //   ),
          //   borderRadius: BorderRadius.all(Radius.circular(6)),
          // ),
        ),

        validator: (value) {
          if (value!.isEmpty) {
            return 'Enter Password';
          } else {
            bool result = validatePassword(value);
            if (result == false) {
              return 'Password should contain small letter';
            } else {
              bool result2 = validatePassword2(value);
              if (result2 == false) {
                return 'Password should contain capital letter';
              } else {
                bool result3 = validatePassword3(value);
                if (result3 == false) {
                  return 'Password should contain number';
                } else {
                  bool result4 = validatePassword4(value);
                  if (result4 == false) {
                    return 'Password should contain special character';
                  } else if (value.length < 8) {
                    return 'Password should be at least 8 characters';
                  } else {}
                }
              }
            }
          }
          return null;
        },
        onChanged: (value) {},
        onTap: widget.onTap,
      ),
    );
  }
}
