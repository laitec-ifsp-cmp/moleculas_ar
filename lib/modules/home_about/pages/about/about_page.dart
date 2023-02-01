import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:moleculas_ar/shared/res/app_res.dart';
import 'package:moleculas_ar/shared/theme/app_theme.dart';
import 'package:moleculas_ar/shared/widgets/app_bar/app_bar_widget.dart';

class AboutPage extends StatelessWidget {
  final String imagePath;
  final String title;
  final String summary;
  final VoidCallback onPressedButton;

  const AboutPage({
    Key? key,
    required this.imagePath,
    required this.title,
    required this.summary,
    required this.onPressedButton,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.colors.background,
      appBar: AppBarWidget(),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 40.h, horizontal: 24.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(imagePath, height: 295.h, width: 295.w),
            SizedBox(height: 40.h),
            Text(title).title,
            SizedBox(height: 20.h),
            Text(summary).summary,
            SizedBox(height: 40.h),
            ElevatedButton(
              onPressed: onPressedButton,
              child: Text(AppRes.strings.clickHere).textFilledButton,
              style: ElevatedButton.styleFrom(
                elevation: 5,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.r)),
                fixedSize: Size(double.maxFinite, 60.h),
                backgroundColor: AppTheme.colors.primary,
                foregroundColor: AppTheme.colors.primaryLight,
                shadowColor: AppTheme.colors.shadow,
                side: BorderSide(width: 1, color: AppTheme.colors.stroke),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
