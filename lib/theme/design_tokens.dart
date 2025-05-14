import 'package:flutter/material.dart';

class DesignTokens {
  // Colors
  static const Color primary = Color(0xFF263238);
  static const Color accent = Color(0xFF4CAF50);
  static const Color red = Color(0xFFE53935);
  static const Color white = Color(0xFFFFFFFF);
  static const Color backgroundColor = Color(0xFFF9F8F5);
  static const Color textPrimary = Color(0xFF263238);
  static const Color textSecondary = Color(0xFF607D8B);

  // Typography
  static const String fontFamily = 'Lexend';

  static const TextStyle headline1 = TextStyle(
    fontFamily: fontFamily,
    fontSize: 24,
    fontWeight: FontWeight.w600,
    height: 1.33,
    letterSpacing: -0.5,
  );

  static const TextStyle headline2 = TextStyle(
    fontFamily: fontFamily,
    fontSize: 20,
    fontWeight: FontWeight.w600,
    height: 1.4,
    letterSpacing: -0.5,
  );

  static const TextStyle body1 = TextStyle(
    fontFamily: fontFamily,
    fontSize: 16,
    fontWeight: FontWeight.w400,
    height: 1.5,
    letterSpacing: 0.15,
  );

  static const TextStyle body2 = TextStyle(
    fontFamily: fontFamily,
    fontSize: 14,
    fontWeight: FontWeight.w400,
    height: 1.43,
    letterSpacing: 0.25,
  );

  // Spacing
  static const double spacing4 = 4.0;
  static const double spacing8 = 8.0;
  static const double spacing12 = 12.0;
  static const double spacing16 = 16.0;
  static const double spacing24 = 24.0;
  static const double spacing32 = 32.0;

  // Component Dimensions
  static const double iconSize = 24.0;
  static const double buttonHeight = 40.0;
  static const double cardBorderRadius = 12.0;
  static const double inputBorderRadius = 8.0;
  static const double tabHeight = 40.0;
  static const double reminderCardWidth = 300.0;
  static const double reminderCardHeight = 300.0;

  // Shadows
  static List<BoxShadow> cardShadow = [
    BoxShadow(
      color: Colors.black.withOpacity(0.05),
      blurRadius: 10,
      offset: const Offset(0, 2),
    ),
  ];
}
