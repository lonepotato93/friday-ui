import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:friday_ui/widgets/bulletin/menu_top_bar.dart';
import '../constants/colors.dart';
import 'bulletin/reminder_card_list.dart';
import 'bulletin/bulletin_tab_bar.dart';
import 'components/social_post.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class InputDesign extends StatelessWidget {
  const InputDesign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.backgroundColor,
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 0),
          child: Column(
            children: [
              const MenuTopBar(),
              SizedBox(height: 12.h),
              const ReminderCardList(),
              SizedBox(height: 12.h),
              // const BulletinTabBar(),
              // SizedBox(height: 16.h),
              // Padding(
              //   padding: EdgeInsets.symmetric(horizontal: 16.w),
              //   child: SocialPost(
              //     username: 'graceful_lee',
              //     timeAgo: '1hr',
              //     content: 'Hey, anybody free? Have 2 hours free time in between my class. Maybe we can have early dinner?',
              //     tag: 'FreeTime',
              //     images: ['https://cdn.builder.io/api/v1/image/assets/TEMP/b5a2f230a524e334aea41aa3731a183f33e231df'],
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
