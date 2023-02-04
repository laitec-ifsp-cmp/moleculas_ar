import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:moleculas_ar/shared/theme/app_theme.dart';

class OnBoardingInfoWidget extends StatelessWidget {
  final String image;
  final String title;
  final String summary;

  const OnBoardingInfoWidget({
    Key? key,
    required this.image,
    required this.title,
    required this.summary,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(image, height: 295.h),
          SizedBox(height: 40.h),
          // Text(title).title,
          // SizedBox(height: 20.h),
          Text(summary).summary,
        ],
      ),
    );
  }
}
