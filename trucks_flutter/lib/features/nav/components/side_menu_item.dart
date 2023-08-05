import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:trucks_flutter/features/core/components/base_screen.dart';
import '../../../utils/responsiveness.dart';
import 'horizontal_menu_item.dart';
import 'vertical_menu_item.dart';

class SideMenuItem extends StatelessWidget {
  final String itemName;
  final VoidCallback onTap; // final Function onTap();

  const SideMenuItem({Key? key, required this.itemName, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (ResponsiveWidget.isCustomSize(context)) {
      return VerticalMenuItem(
        itemName: itemName,
        onTap: onTap,
      );
    } else {
      return HorizontalMenuItem(
        itemName: itemName,
        onTap: onTap,
      );
    }
  }
}
