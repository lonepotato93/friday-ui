import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'reminder_item.dart'; // Assuming ReminderItem is here
import 'bulletin_reminder_card.dart';
import '../../constants/colors.dart'; // For AppColors if needed for dotColor etc.

// Data model for card content (can be moved to a models file later)
class ReminderCardData {
  final String title;
  final List<ReminderItem> reminders;

  ReminderCardData({required this.title, required this.reminders});
}

class ReminderCardList extends StatelessWidget {
  const ReminderCardList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Sample data - this would typically come from a view model or state management
    final List<ReminderCardData> reminderCardsData = [
      ReminderCardData(
        title: 'Sticky Reminders',
        reminders: [
          ReminderItem(
            imageUrl: 'assets/icon/food.svg',
            title: 'Burger Bonanza',
            time: '8:00 AM - 9:00AM',
            duration: '2H',
            dotColor: AppColors.accent,
          ),
          ReminderItem(
            imageUrl: 'assets/icon/jk.svg',
            subtitle: 'JK',
            title: 'BTS Concert',
            time: '2:00 PM - 4:00 PM',
            duration: '6D',
            dotColor: AppColors.red,
            tag: 'OK',
          ),
          ReminderItem(
            imageUrl: 'assets/icon/gym.svg',
            subtitle: 'Jane',
            title: 'Gym Time',
            time: '8:00 AM - 9:00AM',
            duration: '11D',
            dotColor: AppColors.accent,
          ),
        ],
      ),
      ReminderCardData(
        title: 'Key Events',
        reminders: [
          ReminderItem(
            imageUrl: 'assets/icon/food.svg',
            title: 'Team Meeting',
            time: '10:00 AM - 11:00AM',
            duration: '1D',
            dotColor: AppColors.accent,
          ),
          ReminderItem(
            imageUrl: 'assets/icon/jk.svg',
            subtitle: 'Project',
            title: 'Deadline',
            time: '5:00 PM - 6:00 PM',
            duration: '3D',
            dotColor: AppColors.red,
            tag: 'Urgent',
          ),
        ],
      ),
      ReminderCardData(
        title: 'TBD',
        reminders: [
          ReminderItem(
            imageUrl: 'assets/icon/gym.svg',
            subtitle: 'Weekend',
            title: 'Movie Night',
            time: '7:00 PM - 9:00PM',
            duration: '4D',
            dotColor: AppColors.accent,
          ),
          ReminderItem(
            imageUrl: 'assets/icon/food.svg',
            subtitle: 'Friends',
            title: 'Dinner Plans',
            time: 'TBD',
            duration: '5D',
            dotColor: AppColors.accent,
          ),
        ],
      ),
    ];

    return SizedBox(
      height: 300.h, // Adjusted height
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(horizontal: 16.w), // Added horizontal padding for the list
        child: Row(
          children: reminderCardsData.map((data) {
            return Padding(
              padding: EdgeInsets.only(right: 12.w), // Spacing between cards
              child: BulletinReminderCard(
                title: data.title,
                reminders: data.reminders,
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
} 