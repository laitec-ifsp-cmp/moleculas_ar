import 'package:flutter/material.dart';

import 'package:moleculas_ar/shared/res/app_res.dart';
import 'package:moleculas_ar/shared/theme/app_theme.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3)).then(
        (value) => Navigator.pushReplacementNamed(context, "/on_boarding"));

    return Scaffold(
      backgroundColor: AppTheme.colors.background,
      body: Column(children: [
        Expanded(
          flex: 3,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/logo.png"),
              SizedBox(height: 20),
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
              strokeWidth: 3,
            ),
          ),
        ),
      ]),
    );
  }
}
