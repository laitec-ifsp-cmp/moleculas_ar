import 'package:flutter/material.dart';
import 'package:moleculas_ar/modules/home_about/home_about_page.dart';
import 'package:moleculas_ar/modules/home_molecules/home_molecules_page.dart';
import 'package:moleculas_ar/shared/res/app_res.dart';
import 'package:moleculas_ar/shared/theme/app_theme.dart';
import 'package:moleculas_ar/shared/widgets/shared_widgets.dart';
import 'package:permission_handler/permission_handler.dart';

import 'widgets/home_bottom_nav/home_bottom_nav_widget.dart';
import 'widgets/permission_required/permission_required_dialog.dart';

class HomeNavigationPage extends StatefulWidget {
  const HomeNavigationPage({Key? key}) : super(key: key);

  @override
  State<HomeNavigationPage> createState() => _HomeNavigationPageState();
}

class _HomeNavigationPageState extends State<HomeNavigationPage> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.colors.background,
      appBar: AppBar(
        toolbarHeight: AppRes.dimens.appBarHeight,
        backgroundColor: AppTheme.colors.background,
        elevation: 0,
        title: Text((_currentPage == 0)
            ? AppRes.strings.molecules
            : AppRes.strings.about),
        titleTextStyle: AppTheme.textStyles.homeTitle,
      ),
      body: BodyGradientMarginWidget(
        child: PageView(
          physics: const BouncingScrollPhysics(),
          controller: _pageController,
          onPageChanged: (int newPage) {
            setState(() {
              _currentPage = newPage;
            });
          },
          children: const [
            HomeMoleculesPage(),
            HomeAboutPage(),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 100,
        margin: EdgeInsets.symmetric(
          vertical: AppRes.dimens.defaultVerticalMargin,
          horizontal: AppRes.dimens.appHorizontalMargin,
        ),
        child: HomeBottomNavWidget(
          currentPage: _currentPage,
          onTapMolecules: () {
            if (_currentPage != 0) {
              setState(() {
                _pageController.previousPage(
                  duration: const Duration(milliseconds: 400),
                  curve: Curves.ease,
                );
              });
            }
          },
          onTapArMolecules: () async {
            var cameraStatus = await Permission.camera.status;

            if (cameraStatus.isGranted) {
              Navigator.pushNamed(context, "/ar_molecule_target");
            } else if (cameraStatus.isDenied) {
              var cameraRequestStatus = await Permission.camera.request();

              if (cameraRequestStatus.isGranted) {
                Navigator.pushNamed(context, "/ar_molecule_target");
              } else if (cameraRequestStatus.isPermanentlyDenied) {
                showDialog(
                  context: context,
                  builder: (_) => const PermissionRequiredDialog(),
                );
              }
            }
          },
          onTapSettings: () {
            if (_currentPage != 1) {
              setState(() {
                _pageController.nextPage(
                  duration: const Duration(milliseconds: 400),
                  curve: Curves.ease,
                );
              });
            }
          },
        ),
      ),
    );
  }
}
