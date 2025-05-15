import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import '../../constants/colors.dart';
import 'reminder_item.dart'; // Assuming ReminderItem is here

class BulletinReminderCard extends StatelessWidget {
  final String title;
  final List<ReminderItem> reminders;

  const BulletinReminderCard({
    Key? key,
    required this.title,
    required this.reminders,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350.w, // Fixed width for each card
      padding: EdgeInsets.all(16.r),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  title,
                  style: TextStyle(
                    color: AppColors.textSecondary,
                    fontSize: 16.sp,
                    height: 18 / 16,
                    letterSpacing: 0.2,
                  ),
                ),
              ),
              Icon(IconlyLight.arrowRight2, color: AppColors.textSecondary, size: 20.sp),
            ],
          ),
          SizedBox(height: 12.h),
          ...List.generate(reminders.length, (index) {
            final isLast = index == reminders.length - 1;
            return Column(
              children: [
                reminders[index],
                if (!isLast) SizedBox(height: 16.h),
              ],
            );
          }),
        ],
      ),
    );
  }
} 