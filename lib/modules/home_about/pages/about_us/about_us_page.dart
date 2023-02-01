import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:moleculas_ar/shared/res/app_res.dart';
import 'package:moleculas_ar/shared/theme/app_theme.dart';
import 'package:moleculas_ar/shared/widgets/shared_widgets.dart';

import 'widgets/dev_info/dev_info_widget.dart';
import 'widgets/dev_topic/dev_topic_widget.dart';
import 'widgets/info_topic/info_topic_widget.dart';
import 'widgets/institutes_topic/institutes_topic_widget.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.colors.background,
      appBar: AppBarWidget(),
      body: BodyGradientMarginWidget(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 30.h, horizontal: 24.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InfoTopicWidget(
                  title: AppRes.strings.loremIpsum,
                  description: AppRes.strings.longLoremIpsum,
                ),

                InfoTopicWidget(
                  title: AppRes.strings.loremIpsum,
                  description: AppRes.strings.mediumLoremIpsum,
                ),

                DevTopicWidget(
                  devInfoList: [
                    DevInfoWidget(
                      imagePath: "",
                      name: AppRes.strings.loremIpsum,
                      description: AppRes.strings.shortLoremIpsum,
                    ),
                    DevInfoWidget(
                      imagePath: "",
                      name: AppRes.strings.loremIpsum,
                      description: AppRes.strings.shortLoremIpsum,
                    ),
                  ],
                ),

                InstitutesTopicWidget(
                  logoList: [
                    SvgPicture.asset(AppRes.images.aboutTargets, height: 100.h),
                    SvgPicture.asset(AppRes.images.aboutTargets, height: 100.h),
                    SvgPicture.asset(AppRes.images.aboutTargets, height: 100.h),
                    SvgPicture.asset(AppRes.images.aboutTargets, height: 100.h),
                    SvgPicture.asset(AppRes.images.aboutTargets, height: 100.h),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
