import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
            borderRadius: BorderRadius.vertical(top: Radius.circular(30.r)),
          ),
          child: ScrollConfiguration(
            behavior: NoScrollPhysics(),
            child: SingleChildScrollView(
              controller: scrollController,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 24.w),
                child: Column(children: [
                  if (structuralFormulaImagePath.isNotEmpty)
                    Container(
                      height: 5.h,
                      width: 40.w,
                      decoration: BoxDecoration(
                        color: AppTheme.colors.light,
                        borderRadius: BorderRadius.circular(5.r),
                      ),
                    ),
                  if (structuralFormulaImagePath.isNotEmpty)
                    SizedBox(height: 20.h),
                  Text(
                    moleculeName,
                    style: AppTheme.textStyles.moleculeName,
                    textAlign: TextAlign.center,
                  ),
                  Text(moleculeFormula).moleculeFormula,
                  if (structuralFormulaImagePath.isNotEmpty)
                    SizedBox(height: 30.h),
                  if (structuralFormulaImagePath.isNotEmpty)
                    Image.asset(structuralFormulaImagePath, height: 145.h)
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
