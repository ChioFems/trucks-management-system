import 'package:flutter/material.dart';

import '../../../constants/styles.dart';

class CustomButton extends StatelessWidget {
  final Function()? onTap;
  final String buttonText;

  const CustomButton({
    super.key,
    required this.onTap,
    required this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    // double width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(25),
        margin: EdgeInsets.symmetric(horizontal: 12),
        decoration: BoxDecoration(
          color: AppColors.mainBlueColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Text(
            buttonText,
            style: TextStyle(
              color: AppColors.whiteColor,
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
        ),
      ),
    );
  }
}
