import 'package:flutter/material.dart';

abstract class AppMaterialColor {
  static const MaterialColor primaryColor =
      MaterialColor(_primaryColorPrimaryValue, <int, Color>{
    50: Color(0xFFEDE5FE),
    100: Color(0xFFD1BFFD),
    200: Color(0xFFB294FB),
    300: Color(0xFF9369F9),
    400: Color(0xFF7C48F8),
    500: Color(_primaryColorPrimaryValue),
    600: Color(0xFF5D24F6),
    700: Color(0xFF531EF5),
    800: Color(0xFF4918F3),
    900: Color(0xFF370FF1),
  });
  static const int _primaryColorPrimaryValue = 0xFF6528F7;

  static const MaterialColor primaryColorAccent =
      MaterialColor(_primaryColorAccentValue, <int, Color>{
    100: Color(0xFFFFFFFF),
    200: Color(_primaryColorAccentValue),
    400: Color(0xFFC1B7FF),
    700: Color(0xFFAB9DFF),
  });
  static const int _primaryColorAccentValue = 0xFFEDEAFF;
}
