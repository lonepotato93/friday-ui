import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../constants/colors.dart';

class SocialPost extends StatelessWidget {
  final String username;
  final String timeAgo;
  final String content;
  final String? tag;
  final List<String> images;
  final List<String> invitedUsers;
  final List<DateTime> availableTimes;

  const SocialPost({
    Key? key,
    required this.username,
    required this.timeAgo,
    required this.content,
    this.tag,
    required this.images,
    required this.invitedUsers,
    required this.availableTimes,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 398.w,
      padding: EdgeInsets.only(bottom: 12.h),
      child: SingleChildScrollView(
        physics: ClampingScrollPhysics(),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildHeader(),
            SizedBox(height: 12.h),
            _buildContent(),
            if (images.isNotEmpty) ...[
              SizedBox(height: 12.h),
              _buildImageGallery(),
            ],
            SizedBox(height: 12.h),
            _buildAvailableTimes(),
            SizedBox(height: 12.h),
            _buildCalendarLink(),
            SizedBox(height: 12.h),
            _buildInvitedUsers(),
            SizedBox(height: 12.h),
            _buildActionButtons(),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Container(
      width: double.infinity,
      height: 24.h,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: double.infinity,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 18.w,
                  height: 18.h,
                  child: Icon(
                    Icons.calendar_today,
                    size: 18.sp,
                    color: AppColors.textPrimary,
                  ),
                ),
                SizedBox(width: 4.w),
                Text(
                  username,
                  style: TextStyle(
                    color: const Color(0xFF263238),
                    fontSize: 16.sp,
                    fontFamily: 'Lexend',
                    fontWeight: FontWeight.w400,
                    height: 1.12.h,
                    letterSpacing: 0.2,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              height: double.infinity,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    timeAgo,
                    style: TextStyle(
                      color: const Color(0xFF6C757D),
                      fontSize: 14.sp,
                      fontFamily: 'Lexend',
                      fontWeight: FontWeight.w300,
                      height: 1.14.h,
                    ),
                  ),
                  Container(
                    width: 24.w,
                    height: 24.h,
                    padding: EdgeInsets.all(4.r),
                    child: Icon(
                      Icons.more_vert,
                      size: 16.sp,
                      color: AppColors.textSecondary,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildContent() {
    return Container(
      width: double.infinity,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                'Hey I\'m Free',
                style: TextStyle(
                  color: const Color(0xFF6C757D),
                  fontSize: 16.sp,
                  fontFamily: 'Lexend',
                  fontWeight: FontWeight.w400,
                  height: 1.12.h,
                  letterSpacing: 0.2,
                ),
              ),
              SizedBox(width: 8.w),
              Container(
                width: 66.w,
                height: 24.h,
                decoration: ShapeDecoration(
                  color: const Color(0xFFEEEBE2),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4.r),
                  ),
                ),
                child: Center(
                  child: Text(
                    'FreeTime',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: const Color(0xFF263238),
                      fontSize: 12.sp,
                      fontFamily: 'Lexend',
                      fontWeight: FontWeight.w500,
                      height: 1.67,
                      letterSpacing: 0.4,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 4.h),
          Text(
            content,
            style: TextStyle(
              color: const Color(0xFF263238),
              fontSize: 14.sp,
              fontFamily: 'Lexend',
              fontWeight: FontWeight.w300,
              height: 1.14.h,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildImageGallery() {
    return Container(
      width: double.infinity,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(),
      child: Stack(
        children: [
          Container(
            height: 208.h,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(images[0]),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            right: 16.w,
            top: 6.h,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 4.w),
              decoration: ShapeDecoration(
                color: Colors.black.withOpacity(0.1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.r),
                ),
              ),
              child: Text(
                '1/${images.length}',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: const Color(0xFFFEFEFE),
                  fontSize: 12.sp,
                  fontFamily: 'Lexend',
                  fontWeight: FontWeight.w500,
                  height: 1.67.h,
                  letterSpacing: 0.4,
                ),
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 8.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                images.length,
                (index) => Container(
                  width: 6.w,
                  height: 6.h,
                  margin: EdgeInsets.symmetric(horizontal: 4.w),
                  decoration: ShapeDecoration(
                    color:
                        index == 0
                            ? const Color(0xFFFEFEFE)
                            : const Color(0xFFFEFEFE).withOpacity(0.7),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(360.r),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAvailableTimes() {
    return Column(
      children:
          availableTimes.map((time) {
            return Container(
              width: double.infinity,
              margin: EdgeInsets.only(bottom: 8.h),
              child: Row(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Icon(Icons.calendar_today, size: 20.sp),
                        SizedBox(width: 10.w),
                        Expanded(
                          child: Wrap(
                            spacing: 8.w,
                            runSpacing: 8.h,
                            children: [
                              Text(
                                time.toString(),
                                style: TextStyle(
                                  color: const Color(0xFF6C757D),
                                  fontSize: 14.sp,
                                  fontFamily: 'Lexend',
                                  fontWeight: FontWeight.w400,
                                  height: 1.14.h,
                                ),
                              ),
                              Text(
                                '|',
                                style: TextStyle(
                                  color: const Color(0xFF6C757D),
                                  fontSize: 14.sp,
                                  fontFamily: 'Lexend',
                                  fontWeight: FontWeight.w400,
                                  height: 1.14.h,
                                ),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                    width: 8.w,
                                    height: 8.h,
                                    decoration: ShapeDecoration(
                                      color: const Color(0xFF3EC2B2),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                          8.r,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 4.w),
                                  Text(
                                    '4:00 PM - 5:00 PM',
                                    style: TextStyle(
                                      color: const Color(0xFF6C757D),
                                      fontSize: 14.sp,
                                      fontFamily: 'Lexend',
                                      fontWeight: FontWeight.w400,
                                      height: 1.14.h,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 95.w,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [_buildActionButton(), _buildActionButton()],
                    ),
                  ),
                ],
              ),
            );
          }).toList(),
    );
  }

  Widget _buildActionButton() {
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
        decoration: ShapeDecoration(
          color: const Color(0xFFEEEBE2),
          shape: RoundedRectangleBorder(
            side: BorderSide(color: const Color(0xFFFFC727)),
            borderRadius: BorderRadius.circular(24.r),
          ),
        ),
      ),
    );
  }

  Widget _buildCalendarLink() {
    return Container(
      width: double.infinity,
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.r),
        ),
      ),
      child: Row(
        children: [
          Icon(Icons.calendar_today, size: 20.sp),
          SizedBox(width: 12.w),
          Expanded(
            child: Text(
              'http://sample.info/maestro#calendar',
              style: TextStyle(
                color: const Color(0xFF6C757D),
                fontSize: 14.sp,
                fontFamily: 'Lexend',
                fontWeight: FontWeight.w400,
                height: 1.14.h,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInvitedUsers() {
    return Container(
      width: double.infinity,
      child: Row(
        children: [
          SizedBox(
            width: 88.w,
            height: 24.h,
            child: Text(
              'Who\'s Invited',
              style: TextStyle(
                color: const Color(0xFF263238),
                fontSize: 12.sp,
                fontFamily: 'Lexend',
                fontWeight: FontWeight.w500,
                height: 1.67,
                letterSpacing: 0.4,
              ),
            ),
          ),
          Row(
            children: [
              Text(
                invitedUsers.join(', '),
                style: TextStyle(
                  color: const Color(0xFF0065FF),
                  fontSize: 12.sp,
                  fontFamily: 'Lexend',
                  fontWeight: FontWeight.w500,
                  height: 1.67.h,
                  letterSpacing: 0.4,
                ),
              ),
              Icon(Icons.arrow_forward_ios, size: 16.sp),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildActionButtons() {
    return Container(
      width: double.infinity,
      height: 32.h,
      child: Row(
        children: [
          Icon(Icons.thumb_up_outlined, size: 24.sp),
          SizedBox(width: 12.w),
          Icon(Icons.comment_outlined, size: 24.sp),
          SizedBox(width: 12.w),
          Icon(Icons.share_outlined, size: 24.sp),
        ],
      ),
    );
  }
}
