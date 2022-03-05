import 'package:flutter/material.dart';
import 'package:moleculas_ar/shared/theme/app_theme.dart';
import 'package:moleculas_ar/shared/widgets/shared_widgets.dart';

class ArMoleculeTargetPage extends StatelessWidget {
  const ArMoleculeTargetPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),
      body: Container(color: AppTheme.colors.primary),
    );
  }
}
