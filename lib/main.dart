import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:login_systum/resources/Theme_Resource.dart';
import 'package:login_systum/views/utility/Splash_Screen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ),
  );
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: LightThemeMode,
      darkTheme: DarkThemeMode,
      themeMode: ThemeMode.light,
      home: SplashScreen(),
    ),
  );
}
