import 'package:flutter/material.dart';
import 'package:flutter_cube/flutter_cube.dart';
import 'package:moleculas_ar/shared/theme/app_theme.dart';
import 'package:moleculas_ar/shared/widgets/shared_widgets.dart';

import 'widget/molecule_info_sheet/molecule_info_sheet_widget.dart';

class MoleculeObjectPage extends StatelessWidget {
  final String name;
  final String formula;
  final String objectPath;
  final String structuralFormulaImagePath;

  const MoleculeObjectPage({
    Key? key,
    required this.name,
    required this.formula,
    required this.objectPath,
    required this.structuralFormulaImagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),
      body: Stack(
        children: [
          Container(
            color: AppTheme.colors.light,
            child: Cube(onSceneCreated: (scene) {
              scene.world.add(Object(fileName: objectPath));
              scene.camera.zoom = 4.5;
            }),
          ),
          MoleculeInfoSheetWidget(
            moleculeName: name,
            moleculeFormula: formula,
            structuralFormulaImagePath: structuralFormulaImagePath,
          )
        ],
      ),
    );
  }
}
