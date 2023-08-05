import 'package:flutter/material.dart';
import '../features/dashboard/dashboard.dart';
// import '../features/trucks/components/data_table_bk.dart';
import '../features/trucks/trucks.dart';
import '../features/users/users.dart';
import '../routing/routes.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case dashboardPageDisplayName:
      return _getPageRoute(DashboardPage());
    case trucksPageDisplayName:
      return _getPageRoute(TrucksPage());
      // return _getPageRoute(TruckModelDataTable2 as Widget);
    case usersPageDisplayName:
      return _getPageRoute(UsersPage());
    default:
      return _getPageRoute(DashboardPage());
  }
}

PageRoute _getPageRoute(Widget child) {
  return MaterialPageRoute(builder: (context) => child);
}
