import 'package:flutter/material.dart';

import 'app_theme.dart';

extension TextExt on Text {
  Text get splashText => Text(data!, style: AppTheme.textStyles.splashText);

  Text get title => Text(data!, style: AppTheme.textStyles.title);

  Text get summary => Text(
        data!,
        style: AppTheme.textStyles.summary,
        textAlign: TextAlign.center,
      );

  Text get jumpOnBoarding =>
      Text(data!, style: AppTheme.textStyles.jumpOnBoarding);

  Text get textFilledButton =>
      Text(data!, style: AppTheme.textStyles.textFilledButton);

  Text get appBarTitle => Text(data!, style: AppTheme.textStyles.appBarTitle);

  Text get moleculeName => Text(data!, style: AppTheme.textStyles.moleculeName);

  Text get moleculeFormula =>
      Text(data!, style: AppTheme.textStyles.moleculeFormula);
}
