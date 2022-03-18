import 'package:flutter/material.dart';
import 'package:moleculas_ar/shared/res/app_res.dart';
import 'package:moleculas_ar/shared/theme/app_theme.dart';

class MoleculeInfoSheetWidget extends StatelessWidget {
  final String moleculeName;
  final String moleculeFormula;
  final String structuralFormulaImagePath;

  const MoleculeInfoSheetWidget({
    Key? key,
    required this.moleculeName,
    required this.moleculeFormula,
    required this.structuralFormulaImagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.154,
      minChildSize: 0.154,
      // TODO: Make 'maxChildSize' dynamically set by the height of the child.
      maxChildSize: structuralFormulaImagePath.isNotEmpty ? 0.37 : 0.154,
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
              padding: EdgeInsets.symmetric(
                vertical: AppRes.dimens.defaultVerticalMargin,
                horizontal: AppRes.dimens.appHorizontalMargin,
              ),
              child: Column(children: [
                Container(
                  height: 5,
                  width: 40,
                  decoration: BoxDecoration(
                    color: AppTheme.colors.light,
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                SizedBox(height: AppRes.dimens.defaultVerticalMargin),
                Text(
                  moleculeName,
                  style: AppTheme.textStyles.moleculeName,
                  textAlign: TextAlign.center,
                ),
                Text(moleculeFormula).moleculeFormula,
                if (structuralFormulaImagePath.isNotEmpty)
                  SizedBox(height: AppRes.dimens.largeMargin),
                if (structuralFormulaImagePath.isNotEmpty)
                  Image.asset(structuralFormulaImagePath)
              ]),
            ),
          ),
        );
      },
    );
  }
}
