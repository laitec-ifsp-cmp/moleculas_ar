import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:moleculas_ar/shared/res/app_res.dart';
import 'package:moleculas_ar/shared/theme/app_theme.dart';
import 'package:moleculas_ar/shared/widgets/shared_widgets.dart';

import 'widgets/info_topic/info_topic_widget.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.colors.background,
      appBar: AppBarWidget(),
      body: BodyGradientMarginWidget(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.symmetric(
              vertical: AppRes.dimens.largeMargin,
              horizontal: AppRes.dimens.appHorizontalMargin,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InfoTopicWidget(
                  title: AppRes.strings.loremIpsum,
                  description: AppRes.strings.longLoremIpsum,
                ),
                SizedBox(height: AppRes.dimens.largeMargin),

                InfoTopicWidget(
                  title: AppRes.strings.loremIpsum,
                  description: AppRes.strings.mediumLoremIpsum,
                ),
                SizedBox(height: AppRes.dimens.largeMargin),

                Text(AppRes.strings.loremIpsum).title,
                SizedBox(height: AppRes.dimens.smallMargin),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 0,
                      child: Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(image: AssetImage("")),
                        ),
                      ),
                    ),
                    SizedBox(width: AppRes.dimens.smallMargin),
                    Expanded(
                      flex: 1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(AppRes.strings.loremIpsum).itemTitle,
                          Text(AppRes.strings.loremIpsum).description,
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: AppRes.dimens.largeMargin),

                Text(AppRes.strings.loremIpsum).title,
                SizedBox(height: AppRes.dimens.smallMargin),
                SizedBox(
                  width: double.maxFinite,
                  child: Wrap(
                    alignment: WrapAlignment.spaceEvenly,
                    spacing: AppRes.dimens.smallMargin,
                    runSpacing: AppRes.dimens.smallMargin,
                    children: [
                      SvgPicture.asset(AppRes.images.aboutTargets, height: 100),
                      SvgPicture.asset(AppRes.images.aboutTargets, height: 100),
                      SvgPicture.asset(AppRes.images.aboutTargets, height: 100),
                      SvgPicture.asset(AppRes.images.aboutTargets, height: 100),
                      SvgPicture.asset(AppRes.images.aboutTargets, height: 100),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
