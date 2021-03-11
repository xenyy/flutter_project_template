import 'package:flutter/material.dart';

class AppConfigs {
  AppConfigs._();

  //General
  static const String appName = 'Demo app';
  static const String FontFamily = 'Rubik';
}

class Assets {
  Assets._();
  static const String fbLogo = "assets/images/fb_logo.png";
  static const String googleLogo = "assets/images/google_logo.png";
}

enum LogInMethods {
  google,
  fb,
  apple,
  none
}

class AppColors {
  AppColors._();

  static const Map<int, Color> orange = const <int, Color>{
    50: const Color(0xFFFCF2E7),
    100: const Color(0xFFF8DEC3),
    200: const Color(0xFFF3C89C),
    300: const Color(0xFFEEB274),
    400: const Color(0xFFEAA256),
    500: const Color(0xFFE69138),
    600: const Color(0xFFE38932),
    700: const Color(0xFFDF7E2B),
    800: const Color(0xFFDB7424),
    900: const Color(0xFFD56217)
  };

  static const fbColor = Color(0xFF3C599A);
  static const googleColor = Color(0xFF508DF8);
}

class Dimensions {
  Dimensions._();

  ///for all screens
  static const double horizontal_padding = 12.0;
  static const double vertical_padding = 12.0;
}
