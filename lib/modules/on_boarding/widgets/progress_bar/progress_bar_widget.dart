import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:moleculas_ar/shared/res/app_res.dart';
import 'package:moleculas_ar/shared/theme/app_theme.dart';

class ProgressBarWidget extends StatelessWidget {
  final int totalPage;
  final int currentPage;
  final VoidCallback onBackPressed;
  final VoidCallback onNextPressed;

  const ProgressBarWidget({
    Key? key,
    required this.totalPage,
    required this.currentPage,
    required this.onBackPressed,
    required this.onNextPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        currentPage > 0
            ? ElevatedButton(
                onPressed: onBackPressed,
                child: SvgPicture.asset(
                  AppRes.images.iconArrowLeft,
                  height: 20.h,
                  width: 20.w,
                ),
                style: ElevatedButton.styleFrom(
                  elevation: 1,
                  shape: const CircleBorder(),
                  fixedSize: Size(40.h, 40.w),
                  backgroundColor: AppTheme.colors.background,
                  foregroundColor: AppTheme.colors.primaryLight,
                  shadowColor: AppTheme.colors.shadow,
                  side: BorderSide(width: 1, color: AppTheme.colors.light),
                ),
              )
            : Container(
                margin: EdgeInsets.symmetric(horizontal: 11.w),
                height: 40.h,
                width: 40.w),
        ListView.separated(
          itemCount: totalPage,
          itemBuilder: (context, index) => Container(
            height: index == currentPage ? 13 : 10,
            width: index == currentPage ? 13 : 10,
            decoration: BoxDecoration(
                color: index == currentPage
                    ? AppTheme.colors.primary
                    : AppTheme.colors.light,
                shape: BoxShape.circle),
          ),
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          separatorBuilder: (BuildContext context, int index) =>
              const SizedBox(width: 10),
        ),
        ElevatedButton(
          onPressed: onNextPressed,
          child: SvgPicture.asset(
            AppRes.images.iconArrowRight,
            height: 24.h,
            width: 24.w,
          ),
          style: ElevatedButton.styleFrom(
            elevation: 1,
            shape: const CircleBorder(),
            fixedSize: Size(48.h, 48.w),
            backgroundColor: AppTheme.colors.primary,
            foregroundColor: AppTheme.colors.primaryLight,
            shadowColor: AppTheme.colors.shadow,
          ),
        ),
      ],
    );
  }
}
