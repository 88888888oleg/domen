import 'package:flutter/material.dart';

class Palette {

  Palette._();
  static final Palette _instance = Palette._();
  factory Palette() => _instance;

  Brightness _brightness = Brightness.light;

  set brightness(Brightness brightness) {
    _brightness = brightness;
  }

  Color mainBackground() {
    switch (_brightness) {
      case Brightness.light:
        return primaryWhite;
      case Brightness.dark:
        return _mainBlack;
    }
  }

  Color secondaryBackground() {
    switch (_brightness) {
      case Brightness.light:
        return _cultured;
      case Brightness.dark:
        return _mainBlack.shade400;
    }
  }

  Color linkText() {
    switch (_brightness) {
      case Brightness.light:
        return mainBlue;
      case Brightness.dark:
        return secondBlue;
    }
  }

  Color textColor() {
    switch (_brightness) {
      case Brightness.light:
        return _mainBlack;
      case Brightness.dark:
        return _cultured;
    }
  }


  static const MaterialColor _cultured =
  MaterialColor(_culturedPrimaryValue, <int, Color>{
    50: Color(0xFFFEFEFE),
    100: Color(0xFFFBFCFD),
    200: Color(0xFFF9FAFB),
    300: Color(0xFFF7F8F9),
    400: Color(0xFFF5F7F8),
    500: Color(_culturedPrimaryValue),
    600: Color(0xFFF1F4F6),
    700: Color(0xFFEFF2F5),
    800: Color(0xFFEDF0F3),
    900: Color(0xFFEAEEF1),
  });
  static const int _culturedPrimaryValue = 0xFFF3F5F7;

  final MaterialColor _mainBlack =
  const MaterialColor(_mainBlackPrimaryValue, <int, Color>{
    50: Color(0xFFE4E4E4),
    100: Color(0xFFBBBBBB),
    200: Color(0xFF8E8E8D),
    300: Color(0xFF61615F),
    400: Color(0xFF3F3F3D),
    500: Color(_mainBlackPrimaryValue),
    600: Color(0xFF1A1A18),
    700: Color(0xFF151514),
    800: Color(0xFF111110),
    900: Color(0xFF0A0A08),
  });
  static const int _mainBlackPrimaryValue = 0xFF1D1D1B;

  static const primaryWhite = Color(0xFFFFFFFF);
  static const primaryBlack = Color(0xFF000000);
  static const ghostWhite = Color(0xFFF9FAFC);
  static const mainBlue = Color(0xFF13187E);
  static const mainGray = Color(0xFF3C3C3C);
  static const lightGray = Color(0xFF868484);
  static const secondBlue = Color(0xFF3B37E9);

}

