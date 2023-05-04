import 'package:flutter/material.dart';

import 'app_theme.dart';

extension TextExt on Text {
  Text get description => Text(data!, style: AppTheme.textStyles.description);

  Text get itemTitle => Text(data!, style: AppTheme.textStyles.itemTitle);

  Text get splashText => Text(data!, style: AppTheme.textStyles.splashText);

  Text get title => Text(data!, style: AppTheme.textStyles.title);

  Text get titleSmall => Text(data!, style: AppTheme.textStyles.titleSmall);

  Text get summary => Text(
        data!,
        style: AppTheme.textStyles.summary,
        textAlign: TextAlign.center,
      );

  Text get textButton => Text(data!, style: AppTheme.textStyles.textButton);

  Text get textFilledButton =>
      Text(data!, style: AppTheme.textStyles.textFilledButton);

  Text get appBarTitle => Text(data!, style: AppTheme.textStyles.appBarTitle);

  Text get linkText => Text(data!,
      overflow: TextOverflow.ellipsis, style: AppTheme.textStyles.linkText);

  Text get moleculeName => Text(data!, style: AppTheme.textStyles.moleculeName);

  Text get moleculeFormula =>
      Text(data!, style: AppTheme.textStyles.moleculeFormula);
}
