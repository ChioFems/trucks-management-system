import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:trucks_flutter/features/core/components/base_screen.dart';

const int largeScreenSize = 1366;
const int mediumScreenSize = 768;
const int smallSceenSize = 360;
const int customScreenSize = 1100;

class ResponsiveWidget extends StatelessWidget {
  // the custom screen size is specific to this project
  final Widget largeScreen;
  final Widget mediumScreen;
  final Widget smallScreen;
  // final Widget customScreen;

  const ResponsiveWidget({
    super.key,
    required this.largeScreen,
    required this.mediumScreen,
    required this.smallScreen,
    // required this.customScreen
  });

  static bool isSmallScreen(BuildContext context) =>
      MediaQuery.of(context).size.width < mediumScreenSize;

  static bool isMediumScreen(BuildContext context) =>
      MediaQuery.of(context).size.width >= mediumScreenSize &&
      MediaQuery.of(context).size.width < largeScreenSize;

  static bool isLargeScreen(BuildContext context) {
    return MediaQuery.of(context).size.width >= largeScreenSize;
  }

  static bool isCustomSize(BuildContext context) {
    return MediaQuery.of(context).size.width <= customScreenSize &&
        MediaQuery.of(context).size.width > mediumScreenSize;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double width = constraints.maxWidth;
        if (width >= largeScreenSize) {
          return largeScreen;
        } else if (width < largeScreenSize && width >= mediumScreenSize) {
          return mediumScreen;
          // return mediumScreen ?? largeScreen;
        } else {
          return smallScreen;
          // return smallScreen ?? largeScreen;
        }
      },
    );
  }
}
