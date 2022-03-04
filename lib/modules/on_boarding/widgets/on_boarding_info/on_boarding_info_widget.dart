import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:moleculas_ar/shared/theme/app_theme.dart';

class OnBoardingInfoWidget extends StatelessWidget {
  final String image;
  final String title;
  final String summary;

  const OnBoardingInfoWidget({
    Key? key,
    required this.image,
    required this.title,
    required this.summary,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(image),
          SizedBox(height: 40),
          Text(title).onBoardingTitle,
          SizedBox(height: 20),
          Text(summary).onBoardingSummary,
        ],
      ),
    );
  }
}
