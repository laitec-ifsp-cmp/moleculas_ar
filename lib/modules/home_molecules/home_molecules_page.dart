import 'package:flutter/material.dart';
import 'package:moleculas_ar/modules/molecule_category/molecule_category_page.dart';

import 'package:moleculas_ar/shared/theme/app_theme.dart';
import 'package:moleculas_ar/shared/widgets/shared_widgets.dart';

class HomeMoleculesPage extends StatelessWidget {
  const HomeMoleculesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 30),
        // TODO: Show buttons by a MoleculesCategory list
        child: Column(
          children: [
            IconTextOutlinedButtonWidget(
              imagePath: AppTheme.images.iconThreeMolecules,
              title: "Geometria Molecular",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => MoleculeCategoryPage(
                      appBarTitle: "Geometria Molecular",
                    ),
                  ),
                );
              },
            ),
            SizedBox(height: 20),
            IconTextOutlinedButtonWidget(
              imagePath: AppTheme.images.iconSingleMolecule,
              title: "Isomeria Óptica",
              onPressed: () {},
            ),
            SizedBox(height: 20),
            IconTextOutlinedButtonWidget(
              imagePath: AppTheme.images.iconDnaMolecule,
              title: "DNA e RNA",
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
