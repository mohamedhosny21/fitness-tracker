import 'package:flutter/material.dart';
import 'package:sweat_smart/core/theming/colors.dart';
import 'package:sweat_smart/core/theming/styles.dart';

class CustomTextformfield extends StatelessWidget {
  final TextEditingController controller;
  final TextInputType keyboardType;
  final String hintText;
  final String labelText;
  final Widget? suffix;

  const CustomTextformfield({
    super.key,
    required this.controller,
    required this.keyboardType,
    required this.hintText,
    required this.labelText,
    this.suffix,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(color: AppColors.lightGreen),
      controller: controller,
      cursorColor: AppColors.white,
      keyboardType: keyboardType,
      onTapOutside: (event) {
        FocusScope.of(context).unfocus();
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      maxLines: 1,
      onSaved: (newValue) {},
      validator: (value) =>
          value == null || value.isEmpty ? 'required !' : null,
      decoration: InputDecoration(
          errorBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.red)),
          enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(
            color: AppColors.lightGreen,
          )),
          focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.lightGreen, width: 2.5)),
          labelText: labelText,
          labelStyle: AppStyles.font20WhiteMedium,
          floatingLabelBehavior: FloatingLabelBehavior.always,
          hintText: hintText,
          suffix: suffix),
    );
  }
}
