import 'package:flutter/material.dart';
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
      margin: const EdgeInsets.only(bottom: DesignTokens.spacing16),
      child: Row(
        children: [
          const SizedBox(width: DesignTokens.spacing12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                        _buildImage(),
                if (subtitle != null) _buildSubtitle(),
                _buildTitleRow(),
                const SizedBox(height: DesignTokens.spacing4),
                _buildTimeRow(),
              ],
            ),
          ),
          const SizedBox(width: DesignTokens.spacing12),
          _buildDuration(),
        ],
      ),
    );
  }

  Widget _buildImage() {
    return Container(
      padding: const EdgeInsets.all(DesignTokens.spacing4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(DesignTokens.cardBorderRadius),
      ),
      child: Image.network(imageUrl, width: 48, height: 48, fit: BoxFit.cover),
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
          const SizedBox(width: DesignTokens.spacing8),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: DesignTokens.spacing8,
              vertical: DesignTokens.spacing4,
            ),
            decoration: BoxDecoration(
              color: DesignTokens.accent.withOpacity(0.1),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Text(
              tag!,
              style: DesignTokens.body2.copyWith(
                fontSize: 10,
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
          width: 8,
          height: 8,
          decoration: BoxDecoration(color: dotColor, shape: BoxShape.circle),
        ),
        const SizedBox(width: DesignTokens.spacing8),
        Text(time, style: DesignTokens.body2.copyWith(height: 16 / 14)),
      ],
    );
  }

  Widget _buildDuration() {
    return SizedBox(
      width: 40,
      height: 40,
      child: Center(
        child: Text(
          duration,
          style: DesignTokens.body2.copyWith(
            fontSize: 12,
            height: 20 / 12,
            letterSpacing: 0.4,
          ),
        ),
      ),
    );
  }
}
