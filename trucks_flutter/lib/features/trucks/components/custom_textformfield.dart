import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:trucks_flutter/features/core/components/base_component.dart';

import '../../../constants/styles.dart';

class CustomTextFormField extends BaseComponent {
  final controller;
  final String hintText;
  final bool obscureText;
  final keyboardType;
  final Function() validator;

  const CustomTextFormField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
    required this.keyboardType,
    required this.validator,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        validator: validator(),
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: AppColors.whiteColor,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: AppColors.greyColor,
            ),
          ),
          fillColor: Colors.grey.shade200,
          filled: true,
          hintText: hintText,
          hintStyle: TextStyle(
            color: AppColors.blueDarkColor.withOpacity(0.5),
            fontSize: 12.0,
          ),
        ),
        keyboardType: keyboardType,
      ),
    );
  }
}
