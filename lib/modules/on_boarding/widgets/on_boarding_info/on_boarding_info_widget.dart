import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:moleculas_ar/shared/res/app_res.dart';
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
      padding: EdgeInsets.symmetric(
        horizontal: AppRes.dimens.appHorizontalMargin,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(image),
          SizedBox(height: AppRes.dimens.hugeMargin),
          Text(title).title,
          SizedBox(height: AppRes.dimens.defaultVerticalMargin),
          Text(summary).summary,
        ],
      ),
    );
  }
}
