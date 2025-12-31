import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';

import '/core/gen/assets.gen.dart';
import '/core/theme/color_pallete.dart';

class CustomTextFormFiled extends StatefulWidget {
  final String? hintText;
  final TextEditingController? controller;
  final Widget? prefixIcon;
  final String? Function(String?)? validator;
  final bool isPassword;

  const CustomTextFormFiled({
    super.key,
    this.hintText,
    this.controller,
    this.prefixIcon,
    this.validator,
    this.isPassword = false,
  });

  @override
  State<CustomTextFormFiled> createState() => _CustomTextFormFiledState();
}

class _CustomTextFormFiledState extends State<CustomTextFormFiled> {
  bool _isPasswordVisible = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      cursorColor: ColorPallete.borderColor,
      validator: widget.validator,
      obscureText: widget.isPassword ? _isPasswordVisible : false,
      decoration: InputDecoration(
        hintText: widget.hintText,
        hintStyle: const TextStyle(
          color: ColorPallete.borderColor,
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(color: ColorPallete.borderColor),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(color: ColorPallete.borderColor),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(color: ColorPallete.borderColor),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(color: ColorPallete.errorBorderColor),
        ),
        prefixIcon: Padding(
          padding: const EdgeInsets.all(10.0),
          child: widget.prefixIcon,
        ),
        suffixIcon:
            widget.isPassword
                ? Bounceable(
                  onTap: () {
                    setState(() {
                      _isPasswordVisible = !_isPasswordVisible;
                    });
                  },
                  child: Icon(
                    _isPasswordVisible
                        ? Icons.visibility_rounded
                        : Icons.visibility_off_rounded,
                    color: ColorPallete.borderColor,
                  ),
                )
                : null,
      ),
    );
  }
}
