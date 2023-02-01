import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moleculas_ar/shared/theme/app_theme.dart';
import 'package:moleculas_ar/shared/widgets/back_button/back_button_widget.dart';

class AppBarWidget extends PreferredSize {
  final bool showBackButton;
  final String title;

  AppBarWidget({
    Key? key,
    this.showBackButton = true,
    this.title = "",
  }) : super(
          key: key,
          preferredSize: const Size.fromHeight(88),
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 24.w),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const BackButtonWidget(),
                  Text(title).appBarTitle,
                  const SizedBox(width: 45)
                ],
              ),
            ),
          ),
        );
}
