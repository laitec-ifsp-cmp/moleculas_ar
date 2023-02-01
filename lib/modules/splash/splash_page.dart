import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moleculas_ar/shared/res/app_res.dart';
import 'package:moleculas_ar/shared/theme/app_theme.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3)).then((value) {
      print("width = ${MediaQuery.of(context).size.width}");
      print("height = ${MediaQuery.of(context).size.height}");
      return Navigator.pushReplacementNamed(context, "/on_boarding");
    });

    return Scaffold(
      backgroundColor: AppTheme.colors.background,
      body: Column(children: [
        Expanded(
          flex: 3,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(AppRes.images.appLogo, height: 192.h, width: 192.w),
              SizedBox(height: 20.h),
              Text(AppRes.strings.appName).splashText,
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: Center(
            child: CircularProgressIndicator(
              valueColor:
                  AlwaysStoppedAnimation<Color>(AppTheme.colors.primaryLight),
              strokeWidth: 3.w,
            ),
          ),
        ),
      ]),
    );
  }
}
