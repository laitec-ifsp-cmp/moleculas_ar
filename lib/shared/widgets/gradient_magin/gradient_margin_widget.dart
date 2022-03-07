import 'package:flutter/material.dart';
import 'package:moleculas_ar/shared/theme/app_theme.dart';

class GradientMarginWidget extends StatelessWidget {
  final double? top;
  final double? bottom;
  final AlignmentGeometry begin;
  final AlignmentGeometry end;

  const GradientMarginWidget({
    Key? key,
    this.top,
    this.bottom,
    required this.begin,
    required this.end,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Color> topColorList = [
      AppTheme.colors.background,
      AppTheme.colors.background.withOpacity(0.3),
    ];

    List<Color> bottomColorList = [
      AppTheme.colors.background.withOpacity(0.3),
      AppTheme.colors.background,
    ];

    return Positioned(
      top: top,
      bottom: bottom,
      right: 0,
      left: 0,
      child: Container(
        width: double.maxFinite,
        height: 30,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: (top == 0) ? topColorList : bottomColorList,
          ),
        ),
        child: Container(height: 30),
      ),
    );
  }
}
