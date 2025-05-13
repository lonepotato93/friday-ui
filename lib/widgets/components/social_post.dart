import 'package:flutter/material.dart';
import '../../constants/colors.dart';

class SocialPost extends StatelessWidget {
  final String username;
  final String timeAgo;
  final String content;
  final String? tag;
  final List<String> images;

  const SocialPost({
    Key? key,
    required this.username,
    required this.timeAgo,
    required this.content,
    this.tag,
    required this.images,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
              Icon(Icons.calendar_today, size: 18, color: AppColors.textPrimary),
              const SizedBox(width: 4),
              Text(
                username,
                style: const TextStyle(
                  color: AppColors.textPrimary,
                  fontSize: 16,
                  letterSpacing: 0.2,
                  height: 18/16,
                ),
              ),
              Expanded(
                child: Text(
                  timeAgo,
                  style: const TextStyle(
                    color: AppColors.grey,
                    fontSize: 14,
                    height: 16/14,
                  ),
                  textAlign: TextAlign.right,
                ),
              ),
              const SizedBox(width: 8),
              Icon(Icons.more_vert, size: 24, color: AppColors.grey),
            ],
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              Text(
                'Hey I\'m Free',
                style: TextStyle(
                  color: AppColors.grey,
                  fontSize: 16,
                  letterSpacing: 0.2,
                  height: 18/16,
                ),
              ),
              const SizedBox(width: 8),
              if (tag != null)
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Text(
                    tag!,
                    style: const TextStyle(
                      color: AppColors.textPrimary,
                      fontSize: 12,
                      height: 20/12,
                      letterSpacing: 0.4,
                    ),
                  ),
                ),
            ],
          ),
          const SizedBox(height: 4),
          Text(
            content,
            style: const TextStyle(
              color: AppColors.textPrimary,
              fontSize: 14,
              height: 16/14,
            ),
          ),
          if (images.isNotEmpty) ...[
            const SizedBox(height: 12),
            Stack(
              children: [
                Image.network(
                  images[0],
                  width: double.infinity,
                  height: 208,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  top: 6,
                  right: 14,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      '1/${images.length}',
                      style: const TextStyle(
                        color: AppColors.white,
                        fontSize: 12,
                        height: 20/12,
                        letterSpacing: 0.4,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 9,
                  left: 0,
                  right: 0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      images.length,
                      (index) => Container(
                        width: 6,
                        height: 6,
                        margin: const EdgeInsets.symmetric(horizontal: 4),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: index == 0
                              ? AppColors.white
                              : AppColors.white.withOpacity(0.7),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ],
      ),
    );
  }
}
