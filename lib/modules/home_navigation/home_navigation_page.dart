import 'package:flutter/material.dart';
import 'package:moleculas_ar/shared/res/app_res.dart';
import '../home_about/home_about_page.dart';
import '../home_molecules/home_molecules_page.dart';
import 'widgets/home_bottom_nav/home_bottom_nav_widget.dart';
import 'package:moleculas_ar/shared/theme/app_theme.dart';
import 'package:moleculas_ar/shared/widgets/shared_widgets.dart';

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
          physics: BouncingScrollPhysics(),
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
                  duration: Duration(milliseconds: 400),
                  curve: Curves.ease,
                );
              });
            }
          },
          onTapArMolecules: () {
            Navigator.pushNamed(context, "/ar_molecule_target");
          },
          onTapSettings: () {
            if (_currentPage != 1) {
              setState(() {
                _pageController.nextPage(
                  duration: Duration(milliseconds: 400),
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
