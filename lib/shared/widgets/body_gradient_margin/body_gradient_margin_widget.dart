import 'package:flutter/material.dart';

import '../gradient_magin/gradient_margin_widget.dart';

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
        GradientMarginWidget(
          top: 0,
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        GradientMarginWidget(
          bottom: 0,
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ],
    );
  }
}
