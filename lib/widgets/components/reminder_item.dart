import 'package:flutter/material.dart';
import '../../constants/colors.dart';

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
      margin: const EdgeInsets.only(bottom: 16),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(2),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Image.network(
              imageUrl,
              width: 48,
              height: 48,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (subtitle != null)
                  Text(
                    subtitle!,
                    style: const TextStyle(
                      color: AppColors.textPrimary,
                      fontSize: 14,
                      letterSpacing: 0.4,
                    ),
                  ),
                Row(
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        color: AppColors.textPrimary,
                        fontSize: 16,
                        height: 18/16,
                        letterSpacing: 0.2,
                      ),
                    ),
                    if (tag != null) ...[
                      const SizedBox(width: 8),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 4,
                        ),
                        decoration: BoxDecoration(
                          color: AppColors.lightGreen,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Text(
                          tag!,
                          style: const TextStyle(
                            color: AppColors.textPrimary,
                            fontSize: 10,
                            letterSpacing: 0.4,
                          ),
                        ),
                      ),
                    ],
                  ],
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    Container(
                      width: 8,
                      height: 8,
                      decoration: BoxDecoration(
                        color: dotColor,
                        shape: BoxShape.circle,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      time,
                      style: const TextStyle(
                        color: AppColors.textPrimary,
                        fontSize: 14,
                        height: 16/14,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(width: 12),
          SizedBox(
            width: 40,
            height: 40,
            child: Center(
              child: Text(
                duration,
                style: const TextStyle(
                  color: AppColors.textPrimary,
                  fontSize: 12,
                  height: 20/12,
                  letterSpacing: 0.4,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
