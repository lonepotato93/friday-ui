import 'package:flutter/material.dart';
import 'design_tokens.dart';

class AppTheme {
  static const gradient = BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment(0.50, -0.00),
      end: Alignment(0.50, 0.71),
      colors: [Color(0xFF1A1A1A), Color(0xFF2C3547)],
    ),
  );

  static ThemeData get darkTheme {
    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.dark(
        primary: DesignTokens.primary,
        secondary: DesignTokens.accent,
        background: const Color(0xFF1A1A1A),
        surface: const Color(0xFF2C3547),
        error: DesignTokens.red,
        onPrimary: DesignTokens.white,
        onSecondary: DesignTokens.white,
        onBackground: DesignTokens.white,
        onSurface: DesignTokens.white,
        onError: DesignTokens.white,
      ),
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 0,
        titleTextStyle: DesignTokens.headline2,
        iconTheme: IconThemeData(
          color: DesignTokens.white,
          size: DesignTokens.iconSize,
        ),
      ),
      textTheme: const TextTheme(
        displayLarge: DesignTokens.headline1,
        displayMedium: DesignTokens.headline2,
        bodyLarge: DesignTokens.body1,
        bodyMedium: DesignTokens.body2,
      ).apply(bodyColor: DesignTokens.white, displayColor: DesignTokens.white),
      cardTheme: CardTheme(
        color: const Color(0xFF2C3547),
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(DesignTokens.cardBorderRadius),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: DesignTokens.accent,
          foregroundColor: DesignTokens.white,
          minimumSize: const Size(double.infinity, DesignTokens.buttonHeight),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(DesignTokens.inputBorderRadius),
          ),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: const Color(0xFF2C3547),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(DesignTokens.inputBorderRadius),
          borderSide: BorderSide.none,
        ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: DesignTokens.spacing16,
          vertical: DesignTokens.spacing12,
        ),
      ),
    );
  }
}
