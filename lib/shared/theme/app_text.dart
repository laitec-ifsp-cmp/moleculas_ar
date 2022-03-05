import 'package:flutter/material.dart';

import 'app_theme.dart';

extension TextExt on Text {
  Text get splashText =>
      Text(this.data!, style: AppTheme.textStyles.splashText);

  Text get title =>
      Text(this.data!, style: AppTheme.textStyles.title);

  Text get summary => Text(
        this.data!,
        style: AppTheme.textStyles.summary,
        textAlign: TextAlign.center,
      );

  Text get jumpOnBoarding =>
      Text(this.data!, style: AppTheme.textStyles.jumpOnBoarding);

  Text get itemTitle =>
      Text(this.data!, style: AppTheme.textStyles.itemTitle);

  Text get textFilledButton =>
      Text(this.data!, style: AppTheme.textStyles.textFilledButton);

  Text get appBarTitle =>
      Text(this.data!, style: AppTheme.textStyles.appBarTitle);
}
