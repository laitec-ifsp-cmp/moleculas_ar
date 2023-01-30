import 'package:flutter/material.dart';
import 'package:moleculas_ar/shared/res/app_res.dart';
import 'package:moleculas_ar/shared/theme/app_theme.dart';

import 'widgets/on_boarding_info/on_boarding_info_widget.dart';
import 'widgets/progress_bar/progress_bar_widget.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  final PageController _pageController = PageController();
  final int _numPages = 3;
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.colors.background,
      appBar: AppBar(
        backgroundColor: AppTheme.colors.background,
        elevation: 0,
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, "/home_navigation");
            },
            child: Text((AppRes.strings.skip).toUpperCase()).textButton,
            style: TextButton.styleFrom(
              foregroundColor: AppTheme.colors.primaryLight,
              padding: EdgeInsets.symmetric(
                  horizontal: AppRes.dimens.appHorizontalMargin),
            ),
          ),
        ],
      ),
      body: PageView(
        physics: const BouncingScrollPhysics(),
        controller: _pageController,
        onPageChanged: (int newPage) {
          setState(() {
            _currentPage = newPage;
          });
        },
        children: [
          // TODO: Update on boarding information with final content.
          // TODO - Strings: Strings of on boarding will be set after definitions.
          OnBoardingInfoWidget(
            image: AppRes.images.onBoardingDna,
            title: "Introdução",
            summary: AppRes.strings.shortLoremIpsum,
          ),
          OnBoardingInfoWidget(
            image: AppRes.images.onBoardingDna3d,
            title: "Introdução",
            summary: AppRes.strings.shortLoremIpsum,
          ),
          OnBoardingInfoWidget(
            image: AppRes.images.onBoardingDnaHolo,
            title: "Introdução",
            summary: AppRes.strings.shortLoremIpsum,
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 60,
        margin: EdgeInsets.symmetric(
          vertical: AppRes.dimens.defaultVerticalMargin,
          horizontal: AppRes.dimens.appHorizontalMargin,
        ),
        alignment: Alignment.topCenter,
        child: ProgressBarWidget(
          totalPage: _numPages,
          currentPage: _currentPage,
          onNextPressed: () {
            if (_currentPage != _numPages - 1) {
              setState(() {
                _pageController.nextPage(
                  duration: const Duration(milliseconds: 400),
                  curve: Curves.ease,
                );
              });
            } else {
              Navigator.pushReplacementNamed(context, "/home_navigation");
            }
          },
          onBackPressed: () {
            setState(() {
              _pageController.previousPage(
                duration: const Duration(milliseconds: 400),
                curve: Curves.ease,
              );
            });
          },
        ),
      ),
    );
  }
}
