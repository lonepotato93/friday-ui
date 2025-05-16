import 'package:flutter/material.dart';
import 'package:friday_ui/widgets/calendar/top_menu.dart';
import 'package:friday_ui/theme/app_theme.dart';

class CalendarDayViewScreen extends StatelessWidget {
  const CalendarDayViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppTheme.gradient,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Column(
            children: [
              const SizedBox(height: 8),
              const TopMenu(),
              const SizedBox(height: 4),
            ],
          ),
        ),
      ),
    );
  }
}
