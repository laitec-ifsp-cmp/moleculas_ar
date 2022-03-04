import 'package:flutter/material.dart';

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
              label: "Geometria Molecular",
              onPressed: () {},
            ),
            SizedBox(height: 20),
            IconTextOutlinedButtonWidget(
              imagePath: AppTheme.images.iconSingleMolecule,
              label: "Isomeria Óptica",
              onPressed: () {},
            ),
            SizedBox(height: 20),
            IconTextOutlinedButtonWidget(
              imagePath: AppTheme.images.iconDnaMolecule,
              label: "DNA e RNA",
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
