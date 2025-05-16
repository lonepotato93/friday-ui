import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:friday_ui/screens/home/calendar_day_view_screen.dart';
import 'screens/home/bulletin_screen.dart';
import 'theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(414, 896), // Standard design size for mobile apps
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          title: 'Friday UI',
          theme: AppTheme.darkTheme,
          home: const CalendarDayViewScreen(),
          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}