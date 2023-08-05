import 'package:flutter/material.dart';

var myDefaultBackground = Colors.blue[100];

// var myAppBar = AppBar(
//   backgroundColor: Colors.blue[100],
// );

var myDrawer = Drawer(
  backgroundColor: Colors.white,
  child: ListView(
    children: const [
      DrawerHeader(child: Icon(Icons.home)),
      ListTile(
        leading: Icon(Icons.dashboard_sharp),
        title: Text('D A S H B O A R D'),
      ),
      ListTile(
        leading: Icon(Icons.travel_explore),
        title: Text('S A F A R I'),
      ),
      ListTile(
        leading: Icon(Icons.fire_truck),
        title: Text('T R U C K'),
      ),
      ListTile(
        leading: Icon(Icons.person),
        title: Text('D R I V E R'),
      ),
      ListTile(
        leading: Icon(Icons.local_gas_station),
        title: Text('F U E L'),
      ),
      ListTile(
        leading: Icon(Icons.miscellaneous_services),
        title: Text('M A I N T E N A N C E'),
      ),
      ListTile(
        leading: Icon(Icons.insights_outlined),
        title: Text('I N S U R A N C E'),
      ),
      ListTile(
        leading: Icon(Icons.report),
        title: Text('I N C I D E N T'),
      ),
      ListTile(
        leading: Icon(Icons.money),
        title: Text('F I N A N C E'),
      ),
      ListTile(
        leading: Icon(Icons.bar_chart),
        title: Text('R E P O R T S'),
      ),
      ListTile(
        leading: Icon(Icons.settings),
        title: Text('S E T U P'),
      ),
    ],
  ),
);
