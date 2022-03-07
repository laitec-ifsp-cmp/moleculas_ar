import 'package:flutter/material.dart';
import 'package:moleculas_ar/shared/theme/app_theme.dart';
import 'package:moleculas_ar/shared/widgets/back_button/back_button_widget.dart';

class AppBarWidget extends PreferredSize {
  final bool showBackButton;
  final String title;

  AppBarWidget({Key? key, this.showBackButton = true, this.title = ""})
      : super(
          key: key,
          preferredSize: Size.fromHeight(104),
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 24),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BackButtonWidget(),
                  Text(title).appBarTitle,
                  SizedBox(width: 40)
                ],
              ),
            ),
          ),
        );
}
