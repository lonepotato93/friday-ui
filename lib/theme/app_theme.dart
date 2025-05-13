import 'package:flutter/material.dart';
import '../constants/colors.dart';

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      colorScheme: ColorScheme.fromSeed(
        seedColor: AppColors.accent,
        background: AppColors.backgroundColor,
      ),
      scaffoldBackgroundColor: AppColors.backgroundColor,
      useMaterial3: true,
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.backgroundColor,
        elevation: 0,
      ),
    );
  }
} 