import 'package:flutter/material.dart';
import 'package:rmb/resources/resources.dart';

class MyApp extends StatefulWidget {
  const MyApp._internal();
  static const MyApp instance = MyApp._internal();

  factory MyApp() => instance;

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: AppStrings.appName,
      theme: getApplicationTheme(),
      builder: RouteManager.builder,
      routerConfig: RouteManager.getrouter(
        initialRoute: RouterStrings.splashPath,
      ),
    );
  }
}
