import 'package:flutter/material.dart';
import 'package:trucks_flutter/constants/styles.dart';

class ButtonWidgetWithOutIcon extends StatelessWidget {
  final String label;
  final Color? backgroundColor;
  final Color? hoverColor;
  final Color? labelColor;
  final Function() onTap;

  const ButtonWidgetWithOutIcon(
      {super.key,
      required this.label,
      this.backgroundColor,
      this.hoverColor,
      this.labelColor,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      hoverColor: hoverColor ?? primaryColor,
      borderRadius: BorderRadius.circular(4),
      child: Container(
        // width: 120,
        height: 45,
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          color: backgroundColor ?? primaryColor.withOpacity(.7),
          borderRadius: BorderRadius.circular(4),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                  padding: const EdgeInsets.all(defaultSpace / 2),
                  child: Text(
                    label,
                    style: TextStyle(color: labelColor ?? Colors.white),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
