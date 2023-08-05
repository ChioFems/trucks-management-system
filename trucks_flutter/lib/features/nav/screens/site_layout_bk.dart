import 'package:flutter/material.dart';
import 'package:trucks_flutter/constants/styles.dart';
import '../../../utils/responsiveness.dart';
import '../components/side_menu.dart';
import '../components/top_nav.dart';
import 'small_screen.dart';
import 'large_screen.dart';

class SiteLayout2 extends StatelessWidget {
  SiteLayout2({super.key});
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightGrey.withOpacity(.15),
      // extendBodyBehindAppBar: true,
      key: scaffoldKey,
      appBar: topNavigationBar(context, scaffoldKey),
      drawer: Drawer(
        child: SideMenu(),
      ),
      body: const ResponsiveWidget(
        largeScreen: LargeScreen(),
        mediumScreen: LargeScreen(),
        smallScreen: SmallScreen(),
      ),
    );
  }
}
