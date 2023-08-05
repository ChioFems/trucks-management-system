import 'package:flutter/material.dart';
import '../../../constants/styles.dart';
import '../../../utils/local_navigator.dart';
import '../components/side_menu.dart';

class LargeScreen extends StatelessWidget {
  const LargeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
            child: Container(
          color: lightGrey.withOpacity(.2),
          child: SideMenu(),
        )),
        Expanded(
            flex: 5,
            child: Container(
              color: lightGrey.withOpacity(.2),
              // color: primaryColor,
              // margin: EdgeInsets.symmetric(horizontal: 16),
              // padding: EdgeInsets.all(16.0), //color becomes different with color in specific page
              child: localNavigator(),
            ))
      ],
    );
  }
}
