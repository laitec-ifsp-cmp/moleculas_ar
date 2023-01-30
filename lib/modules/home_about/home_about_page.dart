import 'package:flutter/material.dart';
import 'package:moleculas_ar/modules/home_about/pages/about/about_page.dart';
import 'package:moleculas_ar/modules/home_about/pages/about_us/about_us_page.dart';
import 'package:moleculas_ar/shared/res/app_res.dart';
import 'package:moleculas_ar/shared/widgets/shared_widgets.dart';

class HomeAboutPage extends StatelessWidget {
  const HomeAboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: AppRes.dimens.largeMargin,
          horizontal: AppRes.dimens.appHorizontalMargin,
        ),
        child: Column(
          children: [
            IconTextOutlinedButtonWidget(
              imagePath: AppRes.images.iconAboutBook,
              title: AppRes.strings.eBook,
              onPressed: () {
                goToAboutPage(
                  context: context,
                  imagePath: AppRes.images.aboutEBook,
                  title: AppRes.strings.accessEBook,
                  // TODO: Update summary and onPressedButton of eBook option
                  summary: AppRes.strings.shortLoremIpsum,
                  onPressedButton: () {},
                );
              },
            ),
            SizedBox(height: AppRes.dimens.defaultVerticalMargin),
            IconTextOutlinedButtonWidget(
              imagePath: AppRes.images.iconAboutTargets,
              title: AppRes.strings.targets,
              onPressed: () {
                goToAboutPage(
                  context: context,
                  imagePath: AppRes.images.aboutTargets,
                  title: AppRes.strings.downloadTargets,
                  // TODO: Update summary and onPressedButton of Targets option
                  summary: AppRes.strings.shortLoremIpsum,
                  onPressedButton: () {},
                );
              },
            ),
            SizedBox(height: AppRes.dimens.defaultVerticalMargin),
            IconTextOutlinedButtonWidget(
              imagePath: AppRes.images.iconAbout,
              title: AppRes.strings.about,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const AboutUsPage()));
              },
            ),
            SizedBox(height: AppRes.dimens.defaultVerticalMargin),
            IconTextOutlinedButtonWidget(
              imagePath: AppRes.images.iconAboutFeedback,
              title: AppRes.strings.feedback,
              onPressed: () {
                goToAboutPage(
                  context: context,
                  imagePath: AppRes.images.aboutFeedback,
                  // TODO: Update summary and onPressedButton of Feedback option
                  title: AppRes.strings.giveFeedback,
                  summary: AppRes.strings.shortLoremIpsum,
                  onPressedButton: () {},
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  void goToAboutPage({
    required dynamic context,
    required String imagePath,
    required String title,
    required String summary,
    required VoidCallback onPressedButton,
  }) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => AboutPage(
          imagePath: imagePath,
          title: title,
          summary: summary,
          onPressedButton: onPressedButton,
        ),
      ),
    );
  }
}
