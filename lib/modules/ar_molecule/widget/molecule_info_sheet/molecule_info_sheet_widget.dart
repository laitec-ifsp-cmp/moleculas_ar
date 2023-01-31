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
      initialChildSize: structuralFormulaImagePath.isNotEmpty ? 0.154 : 0.11,
      minChildSize: structuralFormulaImagePath.isNotEmpty ? 0.154 : 0.11,
      // TODO: Make 'maxChildSize' dynamically set by the height of the child.
      maxChildSize: structuralFormulaImagePath.isNotEmpty ? 0.37 : 0.11,
      builder: (context, scrollController) {
        return Container(
          decoration: BoxDecoration(
            color: AppTheme.colors.background,
            borderRadius: const BorderRadius.vertical(top: Radius.circular(30)),
          ),
          child: ScrollConfiguration(
            behavior: NoScrollPhysics(),
            child: SingleChildScrollView(
              controller: scrollController,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  vertical: AppRes.dimens.defaultVerticalMargin,
                  horizontal: AppRes.dimens.appHorizontalMargin,
                ),
                child: Column(children: [
                  if (structuralFormulaImagePath.isNotEmpty)
                    Container(
                      height: 5,
                      width: 40,
                      decoration: BoxDecoration(
                        color: AppTheme.colors.light,
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  if (structuralFormulaImagePath.isNotEmpty)
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
                    Image.asset(structuralFormulaImagePath, height: 145)
                ]),
              ),
            ),
          ),
        );
      },
    );
  }
}

class NoScrollPhysics extends ScrollBehavior {
  @override
  Widget buildOverscrollIndicator(
      BuildContext context, Widget child, ScrollableDetails details) {
    return child;
  }
}
