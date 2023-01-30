import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:moleculas_ar/shared/res/app_res.dart';
import 'package:moleculas_ar/shared/theme/app_theme.dart';

class HomeBottomNavWidget extends StatelessWidget {
  final int currentPage;
  final VoidCallback onTapMolecules;
  final VoidCallback onTapArMolecules;
  final VoidCallback onTapSettings;

  const HomeBottomNavWidget({
    Key? key,
    required this.currentPage,
    required this.onTapMolecules,
    required this.onTapArMolecules,
    required this.onTapSettings,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        IconButton(
          onPressed: onTapMolecules,
          icon: SvgPicture.asset(
            AppRes.images.iconMolecule,
            color: (currentPage == 0)
                ? AppTheme.colors.primary
                : AppTheme.colors.primaryLight,
          ),
          highlightColor: AppTheme.colors.light,
        ),
        OutlinedButton(
          onPressed: onTapArMolecules,
          child: SvgPicture.asset(AppRes.images.iconTarget),
          style: OutlinedButton.styleFrom(
            backgroundColor: AppTheme.colors.primary,
            shadowColor: AppTheme.colors.primaryLight,
            shape: const CircleBorder(),
            fixedSize: const Size(80, 80),
          ),
        ),
        IconButton(
          onPressed: onTapSettings,
          icon: SvgPicture.asset(
            AppRes.images.iconGear,
            color: (currentPage == 1)
                ? AppTheme.colors.primary
                : AppTheme.colors.primaryLight,
          ),
          highlightColor: AppTheme.colors.light,
        )
      ],
    );
  }
}
