import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:trucks_flutter/features/core/components/base_screen.dart';
// import 'package:trucks_flutter/features/dashboard/dashboard.dart';
// import '../../../constants/constants.dart';
// import '../../helpers/local_navigator.dart';
import '../../../utils/responsiveness.dart';
import 'large_screen.dart';
import '../components/side_menu.dart';
import 'small_screen.dart';

import '../components/top_nav.dart';

class SiteLayout extends BaseScreen {
  SiteLayout({super.key});
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  AppBar? appBar(BuildContext context, WidgetRef ref) {
    return topNavigationBar(context, scaffoldKey);
  }

  @override
  Drawer? drawer(BuildContext context, WidgetRef ref) {
    return Drawer(
      key: scaffoldKey,
      child: SideMenu(),
    );
  }

  @override
  Widget body(BuildContext context, WidgetRef ref) {
    return Center(
      key: scaffoldKey,
      child: const ResponsiveWidget(
        //render issue in large screen to be fixed,
        largeScreen: LargeScreen(),
        mediumScreen: LargeScreen(),
        smallScreen: SmallScreen(),
        // largeScreen: DashboardPage(),
      ),
      // extendBodyBehindAppBar: true,
    );
    //  return Scaffold(
    //   // extendBodyBehindAppBar: true,
    //   key: scaffoldKey,
    //   appBar: topNavigationBar(context, scaffoldKey),
    //   drawer: Drawer(
    //     child: SideMenu(),
    //   ),
    //   body: const ResponsiveWidget(
    //     largeScreen: LargeScreen(),
    //     mediumScreen: LargeScreen(),
    //     smallScreen: SmallScreen(),
    //   ),
    // );
  }
}
