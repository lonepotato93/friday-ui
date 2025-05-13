import 'package:flutter/material.dart';
import '../constants/colors.dart';
import 'components/reminder_item.dart';
import 'components/social_post.dart';

class InputDesign extends StatelessWidget {
  const InputDesign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.backgroundColor,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Bulletin',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: AppColors.textPrimary,
                    ),
                  ),
                  Row(
                    children: [
                      IconButton(
                        icon: const Icon(Icons.search, color: AppColors.textPrimary),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: const Icon(Icons.notifications_none, color: AppColors.textPrimary),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: const Icon(Icons.add, color: AppColors.textPrimary),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 16),
              SizedBox(
                height: 300, // Increased height to fix overflow
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      _buildReminderCard(
                        title: 'Sticky Reminders',
                        reminders: [
                          ReminderItem(
                            imageUrl: 'https://cdn.builder.io/api/v1/image/assets/TEMP/0e3adec68bebb4654b018763250d122e86050812',
                            title: 'Burger Bonanza',
                            time: '8:00 AM - 9:00AM',
                            duration: '2H',
                            dotColor: AppColors.accent,
                          ),
                          ReminderItem(
                            imageUrl: 'https://cdn.builder.io/api/v1/image/assets/TEMP/9c16c0750c7aee8db73fc7c5dd97161e28d7ea05',
                            subtitle: 'JK',
                            title: 'BTS Concert',
                            time: '2:00 PM - 4:00 PM',
                            duration: '6D',
                            dotColor: AppColors.red,
                            tag: 'OK',
                          ),
                          ReminderItem(
                            imageUrl: 'https://cdn.builder.io/api/v1/image/assets/TEMP/1f1d783b571a4b85c8aad3046f831bf8bcf1c646',
                            subtitle: 'Jane',
                            title: 'Gym Time',
                            time: '8:00 AM - 9:00AM',
                            duration: '11D',
                            dotColor: AppColors.accent,
                          ),
                        ],
                      ),
                      const SizedBox(width: 12),
                      _buildReminderCard(
                        title: 'Key Events',
                        reminders: [
                          ReminderItem(
                            imageUrl: 'https://cdn.builder.io/api/v1/image/assets/TEMP/0e3adec68bebb4654b018763250d122e86050812',
                            title: 'Team Meeting',
                            time: '10:00 AM - 11:00AM',
                            duration: '1D',
                            dotColor: AppColors.accent,
                          ),
                          ReminderItem(
                            imageUrl: 'https://cdn.builder.io/api/v1/image/assets/TEMP/9c16c0750c7aee8db73fc7c5dd97161e28d7ea05',
                            subtitle: 'Project',
                            title: 'Deadline',
                            time: '5:00 PM - 6:00 PM',
                            duration: '3D',
                            dotColor: AppColors.red,
                            tag: 'Urgent',
                          ),
                        ],
                      ),
                      const SizedBox(width: 12),
                      _buildReminderCard(
                        title: 'TBD',
                        reminders: [
                          ReminderItem(
                            imageUrl: 'https://cdn.builder.io/api/v1/image/assets/TEMP/1f1d783b571a4b85c8aad3046f831bf8bcf1c646',
                            subtitle: 'Weekend',
                            title: 'Movie Night',
                            time: '7:00 PM - 9:00PM',
                            duration: '4D',
                            dotColor: AppColors.accent,
                          ),
                          ReminderItem(
                            imageUrl: 'https://cdn.builder.io/api/v1/image/assets/TEMP/0e3adec68bebb4654b018763250d122e86050812',
                            subtitle: 'Friends',
                            title: 'Dinner Plans',
                            time: 'TBD',
                            duration: '5D',
                            dotColor: AppColors.accent,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 12),
              Container(
                height: 40,
                padding: const EdgeInsets.only(left: 16),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      _buildTab('Friday Friends', true),
                      _buildTab('Interacted', false),
                      _buildTab('Following', false),
                      _buildTab('Discover', false),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16),
              SocialPost(
                username: 'graceful_lee',
                timeAgo: '1hr',
                content: 'Hey, anybody free? Have 2 hours free time in between my class. Maybe we can have early dinner?',
                tag: 'FreeTime',
                images: ['https://cdn.builder.io/api/v1/image/assets/TEMP/b5a2f230a524e334aea41aa3731a183f33e231df'],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildReminderCard({
    required String title,
    required List<ReminderItem> reminders,
  }) {
    return Container(
      width: 300, // Fixed width for each card
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  title,
                  style: const TextStyle(
                    color: AppColors.textSecondary,
                    fontSize: 16,
                    height: 18/16,
                    letterSpacing: 0.2,
                  ),
                ),
              ),
              const Icon(Icons.chevron_right, color: AppColors.textSecondary),
            ],
          ),
          const SizedBox(height: 16),
          ...reminders,
        ],
      ),
    );
  }

  Widget _buildTab(String text, bool isSelected) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      decoration: BoxDecoration(
        border: isSelected
            ? Border(
                bottom: BorderSide(
                  color: AppColors.textPrimary,
                  width: 1,
                ),
              )
            : null,
      ),
      child: Text(
        text,
        style: TextStyle(
          color: AppColors.textPrimary,
          fontSize: 16,
          height: isSelected ? 18/16 : 20/16,
          letterSpacing: isSelected ? 0.2 : null,
        ),
      ),
    );
  }
}
