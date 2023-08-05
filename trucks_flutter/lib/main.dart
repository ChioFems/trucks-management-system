import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import '/utils/singletons.dart';
import 'features/nav/providers/menu_controller.dart';
import 'features/nav/providers/navigation_controller.dart';
import 'features/nav/screens/app_container.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initSingletons(); //server connection & initialization
  Get.put(SideMenuController());
  Get.put(NavigationController());
  runApp(
    ProviderScope(
      //riverpod widget, ensure everything in myapp is accessible to riverpods consumers etc
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Trucks Ai',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blueGrey,
          brightness: Brightness.light,
        ),
        textTheme: GoogleFonts.mulishTextTheme(Theme.of(context).textTheme)
            .apply(bodyColor: Colors.black),
        pageTransitionsTheme: PageTransitionsTheme(builders: {
          TargetPlatform.iOS: FadeUpwardsPageTransitionsBuilder(),
          TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
        }),
      ),
      home: AppContainer(),
    );
  }
}
