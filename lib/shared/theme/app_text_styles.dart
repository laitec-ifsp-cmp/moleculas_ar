import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_theme.dart';

abstract class IAppTextStyles {
  TextStyle get description;
  TextStyle get splashText;
  TextStyle get title;
  TextStyle get summary;
  TextStyle get textButton;
  TextStyle get homeTitle;
  TextStyle get appBarTitle;
  TextStyle get itemTitle;
  TextStyle get itemSubTitle;
  TextStyle get moleculeName;
  TextStyle get moleculeFormula;
  TextStyle get textFilledButton;
}

class AppTextStyles implements IAppTextStyles {
  @override
  TextStyle get description => GoogleFonts.poppins(
        fontSize: 12.sp,
        color: AppTheme.colors.textSecondary,
        fontWeight: FontWeight.normal,
      );

  @override
  TextStyle get splashText => GoogleFonts.poppins(
        fontSize: 26.sp,
        color: AppTheme.colors.textPrimary,
        fontWeight: FontWeight.bold, // Semi-bold
      );

  @override
  TextStyle get title => GoogleFonts.poppins(
        fontSize: 22.sp,
        color: AppTheme.colors.textPrimary,
        fontWeight: FontWeight.w600, // Semi-bold
      );

  @override
  TextStyle get summary => GoogleFonts.poppins(
        fontSize: 14.sp,
        color: AppTheme.colors.textSecondary,
        fontWeight: FontWeight.normal,
      );

  @override
  TextStyle get textButton => GoogleFonts.poppins(
        fontSize: 12.sp,
        color: AppTheme.colors.darkOrange,
        fontWeight: FontWeight.w600, // Semi-bold
      );

  @override
  TextStyle get homeTitle => GoogleFonts.poppins(
        fontSize: 24.sp,
        color: AppTheme.colors.textPrimary,
        fontWeight: FontWeight.bold,
      );

  @override
  TextStyle get appBarTitle => GoogleFonts.poppins(
        fontSize: 18,
        color: AppTheme.colors.textPrimary,
        fontWeight: FontWeight.bold,
      );

  @override
  TextStyle get itemTitle => GoogleFonts.poppins(
        fontSize: 16.sp,
        color: AppTheme.colors.textPrimary,
        fontWeight: FontWeight.bold,
      );

  @override
  TextStyle get itemSubTitle => GoogleFonts.poppins(
        fontSize: 12.sp,
        color: AppTheme.colors.oceanGreen,
        fontWeight: FontWeight.w600, // Semi-bold
      );

  @override
  TextStyle get moleculeName => GoogleFonts.poppins(
        fontSize: 18.sp,
        color: AppTheme.colors.textPrimary,
        fontWeight: FontWeight.bold,
      );

  @override
  TextStyle get moleculeFormula => GoogleFonts.poppins(
        fontSize: 16.sp,
        color: AppTheme.colors.oceanGreen,
        fontWeight: FontWeight.w600, // Semi-bold
      );

  @override
  TextStyle get textFilledButton => GoogleFonts.poppins(
        fontSize: 16.sp,
        color: AppTheme.colors.background,
        fontWeight: FontWeight.w600, // Semi-bold
      );
}
