import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomText extends StatelessWidget {
  final String text;
  double size = 16;
  Color color = Colors.black;
  FontWeight weight = FontWeight.normal;

  CustomText(
      {Key? key,
      required this.text,
      required this.size,
      required this.color,
      required this.weight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: size,
        // fontSize: size ?? 16,
        color: color,
        // color: color ?? Colors.black,
        fontWeight: weight,
        // fontWeight: weight ?? FontWeight.normal,
      ),
    );
  }
}
