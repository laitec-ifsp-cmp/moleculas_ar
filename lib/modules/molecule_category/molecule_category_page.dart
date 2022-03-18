import 'package:flutter/material.dart';
import 'package:moleculas_ar/modules/ar_molecule/ar_molecule_page.dart';
import 'package:moleculas_ar/shared/models/molecule_model.dart';
import 'package:moleculas_ar/shared/res/app_res.dart';
import 'package:moleculas_ar/shared/theme/app_theme.dart';
import 'package:moleculas_ar/shared/widgets/shared_widgets.dart';

class MoleculeCategoryPage extends StatelessWidget {
  final String appBarTitle;
  final List<MoleculeModel> molecules;

  const MoleculeCategoryPage({
    Key? key,
    required this.appBarTitle,
    required this.molecules,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.colors.background,
      appBar: AppBarWidget(title: appBarTitle),
      body: BodyGradientMarginWidget(
        child: ListView.separated(
          itemCount: molecules.length,
          itemBuilder: (context, i) => IconTextOutlinedButtonWidget(
            imagePath: (molecules[i].iconPath).isNotEmpty
                ? molecules[i].iconPath
                : AppRes.images.iconSingleMolecule,
            title: molecules[i].name,
            subTitle: molecules[i].molecularFormula,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => ArMoleculePage(
                    name: molecules[i].name,
                    formula: molecules[i].molecularFormula,
                    objectPath: molecules[i].objectPath,
                    structuralFormulaImagePath:
                        molecules[i].structuralFormulaImagePath,
                  ),
                ),
              );
            },
          ),
          padding: EdgeInsets.symmetric(
            horizontal: AppRes.dimens.appHorizontalMargin,
            vertical: AppRes.dimens.largeMargin,
          ),
          scrollDirection: Axis.vertical,
          physics: BouncingScrollPhysics(),
          separatorBuilder: (BuildContext context, int index) =>
              SizedBox(height: AppRes.dimens.defaultVerticalMargin),
        ),
      ),
    );
  }
}
