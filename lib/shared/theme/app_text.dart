import 'package:flutter/material.dart';

import 'app_theme.dart';

extension TextExt on Text {
  Text get splashText =>
      Text(this.data!, style: AppTheme.textStyles.splashText);

  Text get onBoardingTitle =>
      Text(this.data!, style: AppTheme.textStyles.onBoardingTitle);

  Text get onBoardingSummary => Text(
        this.data!,
        style: AppTheme.textStyles.onBoardingSummary,
        textAlign: TextAlign.center,
      );

  Text get jumpOnBoarding =>
      Text(this.data!, style: AppTheme.textStyles.jumpOnBoarding);
}
