import 'package:flutter/material.dart';
import 'package:login_systum/resources/Color_Resource.dart';

ThemeData LightThemeMode = ThemeData(
  brightness: Brightness.light,
  fontFamily: "SourceSans3",
  colorScheme: ColorScheme.light(
    primary: ColorResource.LIGHT_PRIMARY_COLOR,
    background: ColorResource.LIGHT_BACKGROUND_COLOR,
    surface: ColorResource.LIGHT_SURFACE_COLOR,
    outline: ColorResource.LIGHT_OUTLINE_COLOR,
    shadow: ColorResource.LIGHT_SHEDOW_COLOR,
    error: ColorResource.LIGHT_ERROR_COLOR,
  ),
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: ColorResource.LIGHT_PRIMARY_COLOR,
    largeSizeConstraints: BoxConstraints.expand(),
    extendedTextStyle: TextStyle(
      fontSize: 18,
      color: ColorResource.WHITE,
      fontWeight: FontWeight.w700,
    ),
  ),
  appBarTheme: AppBarTheme(
    backgroundColor: ColorResource.LIGHT_BACKGROUND_COLOR,
  ),
);

ThemeData DarkThemeMode = ThemeData(
  brightness: Brightness.dark,
  fontFamily: "SourceSans3",
  colorScheme: ColorScheme.dark(
    primary: ColorResource.DARK_PRIMARY_COLOR,
    background: ColorResource.DARK_BACKGROUND_COLOR,
    surface: ColorResource.DARK_SURFACE_COLOR,
    outline: ColorResource.DARK_OUTLINE_COLOR,
    shadow: ColorResource.DARK_SHEDOW_COLOR,
    error: ColorResource.DARK_ERROR_COLOR,
  ),
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: ColorResource.DARK_PRIMARY_COLOR,
    extendedTextStyle: TextStyle(
      fontSize: 18,
      color: ColorResource.WHITE,
      fontWeight: FontWeight.w700,
    ),
  ),
  appBarTheme: AppBarTheme(
    backgroundColor: ColorResource.DARK_BACKGROUND_COLOR,
  ),
);
