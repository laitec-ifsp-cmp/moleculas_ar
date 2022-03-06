import 'package:flutter/material.dart';

import 'widget/molecule_info_sheet/molecule_info_sheet_widget.dart';
import 'package:moleculas_ar/shared/theme/app_theme.dart';
import 'package:moleculas_ar/shared/widgets/shared_widgets.dart';

class ArMoleculePage extends StatelessWidget {
  final String moleculeName;
  final String moleculeFormula;

  const ArMoleculePage({
    Key? key,
    required this.moleculeName,
    required this.moleculeFormula,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),
      body: Stack(
        children: [
          Container(color: AppTheme.colors.primary),
          MoleculeInfoSheetWidget(
            moleculeName: moleculeName,
            moleculeFormula: moleculeFormula,
          )
        ],
      ),
    );
  }
}
