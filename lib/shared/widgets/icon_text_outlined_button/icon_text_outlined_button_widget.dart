import 'package:flutter/material.dart';

import 'package:moleculas_ar/shared/theme/app_theme.dart';

class IconTextOutlinedButtonWidget extends StatelessWidget {
  final String imagePath;
  final String label;
  final VoidCallback onPressed;

  const IconTextOutlinedButtonWidget({
    Key? key,
    required this.imagePath,
    required this.label,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      child: Row(
        children: [
          Image.asset(imagePath, height: 40, width: 40),
          SizedBox(width: 20),
          Text(label).itemTitle
        ],
      ),
      style: OutlinedButton.styleFrom(
        padding: EdgeInsets.all(20),
        fixedSize: Size(double.maxFinite, 80),
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
