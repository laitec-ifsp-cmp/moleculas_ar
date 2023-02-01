import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:moleculas_ar/shared/res/app_res.dart';
import 'package:moleculas_ar/shared/theme/app_theme.dart';

class BackButtonWidget extends StatelessWidget {
  const BackButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      width: 48,
      child: ElevatedButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: SvgPicture.asset(
          AppRes.images.iconArrowLeft,
          width: 20,
          height: 20,
        ),
        style: ElevatedButton.styleFrom(
          elevation: 5,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          // TODO: Try to remove inner horizontal padding
          padding: const EdgeInsets.all(0),
          backgroundColor: AppTheme.colors.background,
          foregroundColor: AppTheme.colors.primaryLight,
          shadowColor: AppTheme.colors.shadow,
          side: BorderSide(width: 1, color: AppTheme.colors.light),
        ),
      ),
    );
  }
}
