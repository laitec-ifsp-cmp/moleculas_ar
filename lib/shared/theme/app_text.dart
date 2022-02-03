import 'package:flutter/material.dart';

import 'app_theme.dart';

extension TextExt on Text {
  Text get onBoardingTitle =>
      Text(this.data!, style: AppTheme.textStyles.onBoardingTitle);

  Text get splashText =>
      Text(this.data!, style: AppTheme.textStyles.splashText);
}
