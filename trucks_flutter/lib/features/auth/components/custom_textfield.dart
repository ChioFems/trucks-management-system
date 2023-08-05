import 'package:flutter/material.dart';

import '../../../constants/styles.dart';

class CustomTextField extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obscureText;
  final keyboardType;

  const CustomTextField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
    required this.keyboardType,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
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
