import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:moleculas_ar/shared/theme/app_theme.dart';

class BackButtonWidget extends StatelessWidget {
  const BackButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return ElevatedButton(
      onPressed: () {
        Navigator.pop(context);
      },
      child: SvgPicture.asset(
        AppTheme.images.arrowLeft,
        width: 20,
        height: 20,
      ),
      style: ElevatedButton.styleFrom(
        elevation: 5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        // TODO: Try to remove inner horizontal padding
        fixedSize: Size(64, 64),
        primary: AppTheme.colors.background,
        onPrimary: AppTheme.colors.primaryLight,
        shadowColor: AppTheme.colors.shadow,
        side: BorderSide(width: 1, color: AppTheme.colors.light),
      ),
    );
  }
}
