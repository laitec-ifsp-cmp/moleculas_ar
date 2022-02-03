import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_theme.dart';

abstract class IAppTextStyles {
  TextStyle get splashText;
  TextStyle get onBoardingTitle;
  TextStyle get onBoardingSummary;
  TextStyle get jumpOnBoarding;
  TextStyle get homeTitle;
  TextStyle get appBarTitle;
  TextStyle get itemTitle;
  TextStyle get subItemTitle;
  TextStyle get subItemSummary;
  TextStyle get moleculeName;
  TextStyle get moleculeFormula;
}

class AppTextStyles implements IAppTextStyles {
  @override
  TextStyle get splashText => GoogleFonts.poppins(
        fontSize: 26,
        color: AppTheme.colors.textPrimary,
        fontWeight: FontWeight.bold, // Semi-bold
      );

  @override
  TextStyle get onBoardingTitle => GoogleFonts.poppins(
        fontSize: 22,
        color: AppTheme.colors.textPrimary,
        fontWeight: FontWeight.w600, // Semi-bold
      );

  @override
  TextStyle get onBoardingSummary => GoogleFonts.poppins(
        fontSize: 14,
        color: AppTheme.colors.textSecondary,
        fontWeight: FontWeight.normal,
      );

  @override
  TextStyle get jumpOnBoarding => GoogleFonts.poppins(
        fontSize: 12,
        color: AppTheme.colors.darkOrange,
        fontWeight: FontWeight.w600, // Semi-bold
      );

  @override
  TextStyle get homeTitle => GoogleFonts.poppins(
        fontSize: 24,
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
        fontSize: 16,
        color: AppTheme.colors.textPrimary,
        fontWeight: FontWeight.bold,
      );

  @override
  TextStyle get subItemTitle => GoogleFonts.poppins(
        fontSize: 14,
        color: AppTheme.colors.textPrimary,
        fontWeight: FontWeight.bold,
      );

  @override
  TextStyle get subItemSummary => GoogleFonts.poppins(
        fontSize: 12,
        color: AppTheme.colors.oceanGreen,
        fontWeight: FontWeight.w600, // Semi-bold
      );

  @override
  TextStyle get moleculeName => GoogleFonts.poppins(
        fontSize: 18,
        color: AppTheme.colors.textPrimary,
        fontWeight: FontWeight.bold,
      );

  @override
  TextStyle get moleculeFormula => GoogleFonts.poppins(
        fontSize: 16,
        color: AppTheme.colors.oceanGreen,
        fontWeight: FontWeight.w600, // Semi-bold
      );
}
