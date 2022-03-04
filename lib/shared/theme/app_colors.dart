import 'package:flutter/material.dart';

abstract class IAppColors {
  Color get primary;
  Color get primaryLight;
  Color get textPrimary;
  Color get textSecondary;
  Color get background;
  Color get light;
  Color get stroke;
  Color get shadow;
  Color get darkOrange;
  Color get oceanGreen;
}

class AppColors implements IAppColors {
  @override
  Color get primary => const Color(0xFF33357D);

  @override
  Color get primaryLight => const Color(0xFFAAB4CF);

  @override
  Color get textPrimary => const Color(0xFF2E2F58);

  @override
  Color get textSecondary => const Color(0xFF6B6B8D);

  @override
  Color get background => const Color(0xFFFFFFFF);

  @override
  Color get light => const Color(0xFFE7E9EF);

  @override
  Color get stroke => const Color(0xFF0A0436).withOpacity(0.03);

  @override
  Color get shadow => const Color(0xFF0A0436).withOpacity(0.05);

  @override
  Color get darkOrange => const Color(0xFFC06541);

  @override
  Color get oceanGreen => const Color(0xFF6ABCA1);
}
