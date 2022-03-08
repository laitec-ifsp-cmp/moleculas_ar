import 'package:flutter/material.dart';
import 'package:moleculas_ar/modules/ar_molecule/ar_molecule_page.dart';
import 'package:moleculas_ar/shared/res/app_res.dart';
import 'package:moleculas_ar/shared/theme/app_theme.dart';
import 'package:moleculas_ar/shared/widgets/shared_widgets.dart';

class MoleculeCategoryPage extends StatelessWidget {
  final String appBarTitle;

  const MoleculeCategoryPage({
    Key? key,
    required this.appBarTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.colors.background,
      appBar: AppBarWidget(title: appBarTitle),
      body: BodyGradientMarginWidget(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 30),
            // TODO: Show buttons by a Molecules list
            // TODO - Strings: The Molecules name and formula string will be get from the list
            child: Column(children: [
              IconTextOutlinedButtonWidget(
                imagePath: AppRes.images.iconSingleMolecule,
                title: "Ciclonita",
                subTitle: "C3H6N6O6",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => ArMoleculePage(
                        moleculeName: "Ciclonita",
                        moleculeFormula: "C3H6N6O6",
                      ),
                    ),
                  );
                },
              ),
              SizedBox(height: 20),
              IconTextOutlinedButtonWidget(
                imagePath: AppRes.images.iconSingleMolecule,
                title: "Água",
                subTitle: "H20",
                onPressed: () {},
              ),
              SizedBox(height: 20),
              IconTextOutlinedButtonWidget(
                imagePath: AppRes.images.iconSingleMolecule,
                title: "Hexafluoreto de Enxofre",
                subTitle: "SF6",
                onPressed: () {},
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
