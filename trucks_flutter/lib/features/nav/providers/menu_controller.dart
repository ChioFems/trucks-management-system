import 'package:flutter/material.dart';
import '/constants/styles.dart';
import '/routing/routes.dart';
import 'package:get/get.dart';

class SideMenuController extends GetxController {
  static SideMenuController instance = Get.find();
  var activeItem = dashboardPageDisplayName.obs;
  var hoverItem = "".obs;

//tracks the active item name
  changeActiveItemTo(String itemName) {
    activeItem.value = itemName;
  }

  onHover(String itemName) {
    if (!isActive(itemName)) hoverItem.value = itemName;
  }

  isActive(String itemName) => activeItem.value == itemName;

  isHovering(String itemName) => hoverItem.value == itemName;

  Widget returnIconFor(String itemName) {
    switch (itemName) {
      case dashboardPageDisplayName:
        return _customIcon(Icons.dashboard, itemName);
      case trucksPageDisplayName:
        return _customIcon(Icons.fire_truck, itemName);
      case usersPageDisplayName:
        return _customIcon(Icons.people_alt_outlined, itemName);
      case authenticationPageDisplayName:
        return _customIcon(Icons.exit_to_app, itemName);
      default:
        return _customIcon(Icons.exit_to_app, itemName);
    }
  }

  Widget _customIcon(IconData icon, String itemName) {
    if (isActive(itemName)) return Icon(icon, size: 22, color: primaryColor);

    return Icon(
      icon,
      color: isHovering(itemName) ? primaryColor : lightGrey,
    );
  }
}
