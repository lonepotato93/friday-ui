import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../constants/colors.dart';

class BulletinTabBar extends StatefulWidget {
  const BulletinTabBar({Key? key}) : super(key: key);

  @override
  _BulletinTabBarState createState() => _BulletinTabBarState();
}

class _BulletinTabBarState extends State<BulletinTabBar> {
  int _selectedIndex = 0; // Default to the first tab being selected
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
        // Add logic to handle tab selection if needed (e.g., filter content)
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
        decoration: BoxDecoration(
          border: isSelected
              ? Border(
                  bottom: BorderSide(
                    color: AppColors.textPrimary,
                    width: 1.h,
                  ),
                )
              : null,
        ),
        child: Text(
          text,
          style: TextStyle(
            color: AppColors.textPrimary,
            fontSize: 16.sp,
            height: isSelected ? (18 / 16) : (20 / 16),
            letterSpacing: isSelected ? 0.2 : null,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.h,
      padding: EdgeInsets.only(left: 16.w), // Match original padding
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: _tabs.asMap().entries.map((entry) {
            int idx = entry.key;
            String val = entry.value;
            return _buildTab(val, _selectedIndex == idx, idx);
          }).toList(),
        ),
      ),
    );
  }
} 