import 'package:flutter/material.dart';
import 'package:moleculas_ar/shared/res/app_res.dart';

import 'package:moleculas_ar/shared/theme/app_theme.dart';

class IconTextOutlinedButtonWidget extends StatelessWidget {
  final String imagePath;
  final String title;
  final String? subTitle;
  final VoidCallback onPressed;

  const IconTextOutlinedButtonWidget({
    Key? key,
    required this.imagePath,
    required this.title,
    this.subTitle,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      child: Row(children: [
        Image.asset(imagePath, height: 40, width: 40),
        SizedBox(width: AppRes.dimens.defaultVerticalMargin),
        Expanded(
          child: RichText(
            text: TextSpan(children: <TextSpan>[
              TextSpan(text: title, style: AppTheme.textStyles.itemTitle),
              if (subTitle != null)
                TextSpan(
                  text: "\n$subTitle",
                  style: AppTheme.textStyles.itemSubTitle,
                ),
            ]),
          ),
        ),
      ]),
      style: OutlinedButton.styleFrom(
        padding: EdgeInsets.all(20),
        minimumSize: Size.fromHeight(AppRes.dimens.buttonMinHeight),
        fixedSize: Size.fromWidth(double.maxFinite),
        primary: AppTheme.colors.primaryLight,
        shadowColor: AppTheme.colors.shadow,
        backgroundColor: AppTheme.colors.background,
        elevation: 5,
        side: BorderSide(width: 1, color: AppTheme.colors.stroke),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      ),
    );
  }
}
