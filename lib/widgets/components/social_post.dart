import 'package:flutter/material.dart';
import '../../theme/design_tokens.dart';

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
      padding: const EdgeInsets.all(DesignTokens.spacing16),
      decoration: BoxDecoration(
        color: DesignTokens.white,
        borderRadius: BorderRadius.circular(DesignTokens.cardBorderRadius),
        boxShadow: DesignTokens.cardShadow,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildHeader(),
          const SizedBox(height: DesignTokens.spacing12),
          _buildContent(),
          if (images.isNotEmpty) ...[
            const SizedBox(height: DesignTokens.spacing12),
            _buildImageGallery(),
          ],
        ],
      ),
    );
  }

  Widget _buildHeader() {
    return Row(
      children: [
        Icon(Icons.calendar_today, size: 18, color: DesignTokens.textPrimary),
        const SizedBox(width: DesignTokens.spacing4),
        Text(
          username,
          style: DesignTokens.body1.copyWith(
            letterSpacing: 0.2,
            height: 18 / 16,
          ),
        ),
        Expanded(
          child: Text(
            timeAgo,
            style: DesignTokens.body2.copyWith(
              color: DesignTokens.textSecondary,
              height: 16 / 14,
            ),
            textAlign: TextAlign.right,
          ),
        ),
        const SizedBox(width: DesignTokens.spacing8),
        Icon(
          Icons.more_vert,
          size: DesignTokens.iconSize,
          color: DesignTokens.textSecondary,
        ),
      ],
    );
  }

  Widget _buildContent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              'Hey I\'m Free',
              style: DesignTokens.body1.copyWith(
                color: DesignTokens.textSecondary,
                letterSpacing: 0.2,
                height: 18 / 16,
              ),
            ),
            const SizedBox(width: DesignTokens.spacing8),
            if (tag != null)
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: DesignTokens.spacing8,
                  vertical: DesignTokens.spacing4,
                ),
                decoration: BoxDecoration(
                  color: DesignTokens.accent.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(
                    DesignTokens.inputBorderRadius,
                  ),
                ),
                child: Text(
                  tag!,
                  style: DesignTokens.body2.copyWith(
                    fontSize: 12,
                    height: 20 / 12,
                    letterSpacing: 0.4,
                  ),
                ),
              ),
          ],
        ),
        const SizedBox(height: DesignTokens.spacing4),
        Text(content, style: DesignTokens.body2.copyWith(height: 16 / 14)),
      ],
    );
  }

  Widget _buildImageGallery() {
    return Stack(
      children: [
        Image.network(
          images[0],
          width: double.infinity,
          height: 208,
          fit: BoxFit.cover,
        ),
        Positioned(
          top: DesignTokens.spacing8,
          right: DesignTokens.spacing16,
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: DesignTokens.spacing4,
            ),
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.1),
              borderRadius: BorderRadius.circular(
                DesignTokens.inputBorderRadius,
              ),
            ),
            child: Text(
              '1/${images.length}',
              style: DesignTokens.body2.copyWith(
                color: DesignTokens.white,
                fontSize: 12,
                height: 20 / 12,
                letterSpacing: 0.4,
              ),
            ),
          ),
        ),
        Positioned(
          bottom: DesignTokens.spacing8,
          left: 0,
          right: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              images.length,
              (index) => Container(
                width: 6,
                height: 6,
                margin: const EdgeInsets.symmetric(
                  horizontal: DesignTokens.spacing4,
                ),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color:
                      index == 0
                          ? DesignTokens.white
                          : DesignTokens.white.withOpacity(0.7),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
