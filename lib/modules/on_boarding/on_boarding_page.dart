import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
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
            child: Text("Pular".toUpperCase()).jumpOnBoarding,
            style: TextButton.styleFrom(
              primary: AppTheme.colors.primaryLight,
              padding: EdgeInsets.symmetric(horizontal: 24),
            ),
          ),
        ],
      ),
      body: PageView(
        physics: BouncingScrollPhysics(),
        controller: _pageController,
        onPageChanged: (int newPage) {
          setState(() {
            _currentPage = newPage;
          });
        },
        children: [
          // TODO: Update on boarding information with final content.
          OnBoardingInfoWidget(
            image: AppTheme.images.onBoardingDna,
            title: "Introdução",
            summary: "Lorem ipsum dolor sit amet, consectetur adipiscing "
                "elit, sed do eiusmod tempor incididunt ut labore et dolore",
          ),
          OnBoardingInfoWidget(
            image: AppTheme.images.onBoardingDna3d,
            title: "Introdução",
            summary: "Lorem ipsum dolor sit amet, consectetur adipiscing "
                "elit, sed do eiusmod tempor incididunt ut labore et dolore",
          ),
          OnBoardingInfoWidget(
            image: AppTheme.images.onBoardingDnaHolo,
            title: "Introdução",
            summary: "Lorem ipsum dolor sit amet, consectetur adipiscing "
                "elit, sed do eiusmod tempor incididunt ut labore et dolore",
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 60,
        margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        alignment: Alignment.topCenter,
        child: ProgressBarWidget(
          totalPage: _numPages,
          currentPage: _currentPage,
          onNextPressed: () {
            if (_currentPage != _numPages - 1) {
              setState(() {
                _pageController.nextPage(
                  duration: Duration(milliseconds: 400),
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
                duration: Duration(milliseconds: 400),
                curve: Curves.ease,
              );
            });
          },
        ),
      ),
    );
  }
}
