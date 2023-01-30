import 'package:flutter/material.dart';
import 'package:moleculas_ar/shared/widgets/gradient_magin/gradient_margin_widget.dart';

class BodyGradientMarginWidget extends StatelessWidget {
  final Widget child;

  const BodyGradientMarginWidget({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        child,
        const GradientMarginWidget(
          top: 0,
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        const GradientMarginWidget(
          bottom: 0,
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ],
    );
  }
}
