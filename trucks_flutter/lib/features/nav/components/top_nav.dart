import 'package:flutter/material.dart';
import '/constants/styles.dart';
import '../../../utils/responsiveness.dart';

import '../../core/components/custom_text.dart';

AppBar topNavigationBar(BuildContext context, GlobalKey<ScaffoldState> key) =>
    AppBar(
      leading: !ResponsiveWidget.isSmallScreen(context)
          ? Row(
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 14),
                  child: Image.asset(
                    "assets/icons/logo.png",
                    width: 30,
                  ),
                ),
              ],
            )
          : IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                //key.currentState.openDrawer();
                key.currentState?.openDrawer();
              },
            ),
      title: Row(
        children: [
          // Visibility(
          //     visible: !ResponsiveWidget.isSmallScreen(context),
          //     child: CustomText(
          //       text: "Truck Ai",
          //       color: lightGrey,
          //       size: 20,
          //       weight: FontWeight.bold,
          //     ),),
          CustomText(
            text: "Truck ",
            color: lightGrey,
            size: 20,
            weight: FontWeight.w900,
          ),
          Text(
            'Ai',
            style: TextStyle(color: lightGrey, fontSize: 20),
          ),
          Expanded(child: Container()),
          IconButton(
              icon: Icon(
                Icons.settings,
                color: dark.withOpacity(.7),
              ),
              onPressed: () {}),
          Stack(
            children: [
              IconButton(
                  icon: Icon(
                    Icons.notifications,
                    color: dark.withOpacity(.7),
                  ),
                  onPressed: () {}),
              Positioned(
                top: 7,
                right: 7,
                child: Container(
                  width: 12,
                  height: 12,
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                      color: active,
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: light, width: 2)),
                ),
              )
            ],
          ),
          Container(
            width: 1,
            height: 22,
            color: lightGrey,
          ),
          const SizedBox(
            width: 24,
          ),
          CustomText(
            text: "Joseph Morghan",
            color: lightGrey,
            size: 12,
            weight: FontWeight.normal,
          ),
          const SizedBox(
            width: 16,
          ),
          Container(
            decoration: BoxDecoration(
                color: active.withOpacity(.5),
                borderRadius: BorderRadius.circular(30)),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(30)),
              child: Container(
                padding: const EdgeInsets.all(2),
                margin: const EdgeInsets.all(2),
                child: CircleAvatar(
                  backgroundColor: lightGrey.withOpacity(.2),
                  child: Icon(
                    Icons.person_outline,
                    color: dark,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
      iconTheme: IconThemeData(color: dark),
      elevation: 0,
      backgroundColor: light,
      // backgroundColor: Colors.transparent,
      // backgroundColor: lightGrey.withOpacity(.2),
    );
