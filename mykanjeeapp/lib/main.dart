import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// ignore: unused_import
import 'package:flutter/scheduler.dart';
import 'package:mykanjeeapp/theme/theme_helper.dart';
import 'package:mykanjeeapp/routes/app_routes.dart';

var globalMessengerKey = GlobalKey<ScaffoldMessengerState>();
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  ///Please update theme as per your need if required.
  ThemeHelper().changeTheme('primary');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme,
      title: 'mykanjeeapp',
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.containerScreen,
      routes: AppRoutes.routes,
    );
  }
}
