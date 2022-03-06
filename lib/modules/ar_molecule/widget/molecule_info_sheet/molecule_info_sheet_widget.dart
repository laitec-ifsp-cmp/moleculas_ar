import 'package:flutter/material.dart';
import 'package:moleculas_ar/shared/theme/app_theme.dart';

class MoleculeInfoSheetWidget extends StatelessWidget {
  final String moleculeName;
  final String moleculeFormula;

  const MoleculeInfoSheetWidget({
    Key? key,
    required this.moleculeName,
    required this.moleculeFormula,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.154,
      minChildSize: 0.154,
      // TODO: Make 'maxChildSize' dynamically set by the height of the child.
      maxChildSize: 0.37,
      builder: (context, scrollController) {
        return Container(
          decoration: BoxDecoration(
            color: AppTheme.colors.background,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(30),
              topLeft: Radius.circular(30),
            ),
          ),
          child: SingleChildScrollView(
            physics: ClampingScrollPhysics(),
            controller: scrollController,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              child: Column(children: [
                Container(
                  height: 5,
                  width: 40,
                  decoration: BoxDecoration(
                    color: AppTheme.colors.light,
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                SizedBox(height: 20),
                Text(moleculeName).moleculeName,
                Text(moleculeFormula).moleculeFormula,
                SizedBox(height: 30),
                Image.asset(AppTheme.images.cycloniteGeometricStructure)
              ]),
            ),
          ),
        );
      },
    );
  }
}
