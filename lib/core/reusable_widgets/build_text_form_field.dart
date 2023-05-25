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
        this.validator
      })
      : super(key: key);

  final TextEditingController inputController;
  final String inputHintText;
  final TextInputType keyboardType;
  final void Function(String)? onChanged;
  final Widget? prefixIcon;
  final String? Function(String?)? validator;

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
        ),
        //validator: (value) => Validator.validateEmail(value ?? ''),
        onChanged: (value) {
        },
      ),
    );
  }
}
