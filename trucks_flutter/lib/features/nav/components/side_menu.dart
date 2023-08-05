import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get.dart';
import 'package:trucks_flutter/features/core/components/base_component.dart';
import 'package:trucks_flutter/features/core/components/base_screen.dart';

import '/features/core/providers/session_provider.dart';
import '/constants/controllers.dart';
import '/constants/styles.dart';
import '/utils/responsiveness.dart';
import '/routing/routes.dart';
import '/features/core/components/custom_text.dart';
import 'side_menu_item.dart';

class SideMenu extends BaseScreen {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      color: light,
      child: ListView(
        children: [
          if (ResponsiveWidget.isSmallScreen(context))
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(height: 40),
                Row(
                  children: [
                    SizedBox(width: width / 48),
                    Padding(
                      padding: EdgeInsets.only(right: 12),
                      child: Image.asset(
                        "assets/icons/logo.png",
                        width: 30,
                      ),
                    ),
                    Flexible(
                        child: CustomText(
                      text: "Truck Ai",
                      size: 20,
                      weight: FontWeight.bold,
                      color: lightGrey,
                    )),
                    SizedBox(width: width / 48),
                  ],
                ),
              ],
            ), //end of small screen
          // const SizedBox(height: 10),
          Divider(color: lightGrey.withOpacity(.1)),
          Column(
            mainAxisSize: MainAxisSize.min,
            // children: sideMenuItemRoutes
            //     .map((item) => SideMenuItem(
            //         itemName: item.name,
            children: sideMenuItemRoutes
                .map((itemName) => SideMenuItem(
                      itemName: itemName == authenticationPageDisplayName
                          ? "Log Out"
                          : itemName,
                      onTap: () {
                        if (itemName == authenticationPageDisplayName) {
                          //log out code
                          ref.read(sessionProvider.notifier).logout();
                        }
                        // if (item.route == authenticationPageRoute) {
                        //   Get.offAllNamed(authenticationPageRoute);
                        //   menuController
                        //       .changeActiveItemTo(dashboardPageDisplayName);
                        // }
                        if (!menuController.isActive(itemName)) {
                          menuController.changeActiveItemTo(itemName);
                          if (ResponsiveWidget.isSmallScreen(context)) {
                            Get.back();
                          }
                          navigationController.navigateTo(itemName);
                        }
                      },
                    ))
                .toList(),
          ),
        ],
      ),
    );
  }
}
