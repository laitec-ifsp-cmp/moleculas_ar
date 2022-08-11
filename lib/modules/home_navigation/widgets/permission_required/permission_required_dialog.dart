import 'package:flutter/material.dart';
import 'package:moleculas_ar/shared/res/app_res.dart';
import 'package:moleculas_ar/shared/theme/app_theme.dart';
import 'package:permission_handler/permission_handler.dart';

class PermissionRequiredDialog extends StatelessWidget {
  const PermissionRequiredDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(AppRes.strings.permissionRequired).title,
      content: Text(
        AppRes.strings.permissionRequiredExplanation,
        style: AppTheme.textStyles.summary,
      ),
      actions: [
        TextButton(
          onPressed: () {
            openAppSettings();
            Navigator.pop(context);
          },
          child: Text((AppRes.strings.appInfo).toUpperCase()).textButton,
          style: TextButton.styleFrom(
            padding: EdgeInsets.symmetric(
                horizontal: AppRes.dimens.appHorizontalMargin),
          ),
        ),
      ],
      backgroundColor: AppTheme.colors.background,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
    );
  }
}
