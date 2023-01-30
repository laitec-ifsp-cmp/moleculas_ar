import 'package:flutter/material.dart';
import 'package:moleculas_ar/shared/res/app_res.dart';
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
          preferredSize: Size.fromHeight(AppRes.dimens.appBarHeight),
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(
                vertical: AppRes.dimens.defaultVerticalMargin,
                horizontal: AppRes.dimens.appHorizontalMargin,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const BackButtonWidget(),
                  Text(title).appBarTitle,
                  SizedBox(width: AppRes.dimens.hugeMargin)
                ],
              ),
            ),
          ),
        );
}
