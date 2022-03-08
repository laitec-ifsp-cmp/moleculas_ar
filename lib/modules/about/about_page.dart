import 'package:flutter/material.dart';
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
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(imagePath),
            SizedBox(height: 40),
            Text(title).title,
            SizedBox(height: 20),
            Text(summary).summary,
            SizedBox(height: 40),
            ElevatedButton(
              onPressed: onPressedButton,
              child: Text(AppRes.strings.clickHere).textFilledButton,
              style: ElevatedButton.styleFrom(
                elevation: 5,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                fixedSize: Size(double.maxFinite, 60),
                primary: AppTheme.colors.primary,
                onPrimary: AppTheme.colors.primaryLight,
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
