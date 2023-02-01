import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:moleculas_ar/shared/res/app_res.dart';
import 'package:moleculas_ar/shared/theme/app_theme.dart';

class HomeBottomNavWidget extends StatelessWidget {
  final int currentPage;
  final VoidCallback onTapMolecules;
  final VoidCallback onTapArMolecules;
  final VoidCallback onTapSettings;

  const HomeBottomNavWidget({
    Key? key,
    required this.currentPage,
    required this.onTapMolecules,
    required this.onTapArMolecules,
    required this.onTapSettings,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        IconButton(
          onPressed: onTapMolecules,
          icon: SvgPicture.asset(
            AppRes.images.iconMolecule,
            height: 24.h,
            width: 24.w,
            color: (currentPage == 0)
                ? AppTheme.colors.primary
                : AppTheme.colors.primaryLight,
          ),
          highlightColor: AppTheme.colors.light,
        ),
        OutlinedButton(
          onPressed: onTapArMolecules,
          child: SvgPicture.asset(AppRes.images.iconTarget, height: 24.h,width: 24.w),
          style: OutlinedButton.styleFrom(
            backgroundColor: AppTheme.colors.primary,
            shadowColor: AppTheme.colors.primaryLight,
            shape: const CircleBorder(),
            fixedSize: Size(80.h, 80.w),
          ),
        ),
        IconButton(
          onPressed: onTapSettings,
          icon: SvgPicture.asset(
            AppRes.images.iconGear,
            height: 24.h,
            width: 24.w,
            color: (currentPage == 1)
                ? AppTheme.colors.primary
                : AppTheme.colors.primaryLight,
          ),
          highlightColor: AppTheme.colors.light,
        )
      ],
    );
  }
}
