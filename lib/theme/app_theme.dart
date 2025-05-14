import 'package:flutter/material.dart';
import 'design_tokens.dart';

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.light(
        primary: DesignTokens.primary,
        secondary: DesignTokens.accent,
        background: DesignTokens.backgroundColor,
        surface: DesignTokens.white,
        error: DesignTokens.red,
        onPrimary: DesignTokens.white,
        onSecondary: DesignTokens.white,
        onBackground: DesignTokens.textPrimary,
        onSurface: DesignTokens.textPrimary,
        onError: DesignTokens.white,
      ),
      scaffoldBackgroundColor: DesignTokens.backgroundColor,
      appBarTheme: const AppBarTheme(
        backgroundColor: DesignTokens.backgroundColor,
        elevation: 0,
        titleTextStyle: DesignTokens.headline2,
        iconTheme: IconThemeData(
          color: DesignTokens.textPrimary,
          size: DesignTokens.iconSize,
        ),
      ),
      textTheme: const TextTheme(
        displayLarge: DesignTokens.headline1,
        displayMedium: DesignTokens.headline2,
        bodyLarge: DesignTokens.body1,
        bodyMedium: DesignTokens.body2,
      ),
      cardTheme: CardTheme(
        color: DesignTokens.white,
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
        fillColor: DesignTokens.white,
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
