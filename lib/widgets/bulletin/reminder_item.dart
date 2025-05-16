import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../theme/design_tokens.dart';

class ReminderItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String? subtitle;
  final String time;
  final String duration;
  final Color dotColor;
  final String? tag;

  const ReminderItem({
    Key? key,
    required this.imageUrl,
    required this.title,
    this.subtitle,
    required this.time,
    required this.duration,
    required this.dotColor,
    this.tag,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(width: 12.w),
          _buildImage(),
          SizedBox(width: 12.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (subtitle != null) _buildSubtitle(),
                _buildTitleRow(),
                SizedBox(height: 4.h),
                _buildTimeRow(),
              ],
            ),
          ),
          SizedBox(width: 12.w),
          _buildDuration(),
        ],
      ),
    );
  }

  Widget _buildImage() {
    return Container(
      padding: EdgeInsets.all(4.r),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(12.r)),
      child: SvgPicture.asset(
        'assets/icon/food.svg',
        width: 48.w,
        height: 48.h,
      ),
    );
  }

  Widget _buildSubtitle() {
    return Text(
      subtitle!,
      style: DesignTokens.body2.copyWith(letterSpacing: 0.4),
    );
  }

  Widget _buildTitleRow() {
    return Row(
      children: [
        Text(
          title,
          style: DesignTokens.body1.copyWith(
            height: 18 / 16,
            letterSpacing: 0.2,
          ),
        ),
        if (tag != null) ...[
          SizedBox(width: 8.w),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
            decoration: BoxDecoration(
              color: DesignTokens.accent.withOpacity(0.1),
              borderRadius: BorderRadius.circular(16.r),
            ),
            child: Text(
              tag!,
              style: DesignTokens.body2.copyWith(
                fontSize: 10.sp,
                letterSpacing: 0.4,
              ),
            ),
          ),
        ],
      ],
    );
  }

  Widget _buildTimeRow() {
    return Row(
      children: [
        Container(
          width: 8.w,
          height: 8.h,
          decoration: BoxDecoration(color: dotColor, shape: BoxShape.circle),
        ),
        SizedBox(width: 8.w),
        Text(time, style: DesignTokens.body2.copyWith(height: 16 / 14)),
      ],
    );
  }

  Widget _buildDuration() {
    return SizedBox(
      width: 40.w,
      height: 40.h,
      child: Center(
        child: Text(
          duration,
          style: DesignTokens.body2.copyWith(
            fontSize: 12.sp,
            height: 20 / 12,
            letterSpacing: 0.4,
          ),
        ),
      ),
    );
  }
}
