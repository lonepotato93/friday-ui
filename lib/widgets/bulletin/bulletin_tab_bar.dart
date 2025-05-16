import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../constants/colors.dart';

class BulletinTabBar extends StatefulWidget {
  const BulletinTabBar({Key? key}) : super(key: key);

  @override
  _BulletinTabBarState createState() => _BulletinTabBarState();
}

class _BulletinTabBarState extends State<BulletinTabBar> {
  int _selectedIndex = 0;
  final List<String> _tabs = [
    'Friday Friends',
    'Interacted',
    'Following',
    'Discover',
  ];

  Widget _buildTab(String text, bool isSelected, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });
      },
      child: Opacity(
        opacity: isSelected ? 1.0 : 0.8,
        child: Container(
          height: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
          clipBehavior: Clip.none,
          decoration: BoxDecoration(
            border:
                isSelected
                    ? Border(
                      bottom: BorderSide(
                        color: AppColors.textPrimary,
                        width: 1.h,
                      ),
                    )
                    : null,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                text,
                style: TextStyle(
                  color: AppColors.textPrimary,
                  fontSize: 16.sp,
                  fontFamily: 'Lexend',
                  fontWeight: isSelected ? FontWeight.w400 : FontWeight.w300,
                  height: isSelected ? 1.12.h : 1.25.h,
                  letterSpacing: isSelected ? 0.2 : null,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 414.w,
      height: 40.h,
      padding: EdgeInsets.only(left: 16.w),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children:
              _tabs.asMap().entries.map((entry) {
                int idx = entry.key;
                String val = entry.value;
                return _buildTab(val, _selectedIndex == idx, idx);
              }).toList(),
        ),
      ),
    );
  }
}
