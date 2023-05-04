import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moleculas_ar/app_widget.dart';
import 'package:moleculas_ar/shared/theme/app_theme.dart';

void main() async {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: AppTheme.colors.background,
    statusBarColor: AppTheme.colors.background,
  ));

  await ScreenUtil.ensureScreenSize();

  runApp(const AppWidget());
}
