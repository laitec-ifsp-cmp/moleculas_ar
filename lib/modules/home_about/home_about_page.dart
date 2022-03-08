import 'package:flutter/material.dart';
import 'package:moleculas_ar/modules/about/about_page.dart';
import 'package:moleculas_ar/shared/res/app_res.dart';
import 'package:moleculas_ar/shared/widgets/shared_widgets.dart';

class HomeAboutPage extends StatelessWidget {
  const HomeAboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 30),
        child: Column(
          children: [
            IconTextOutlinedButtonWidget(
              imagePath: AppRes.images.iconAboutBook,
              title: "eBook",
              onPressed: () {
                goToAboutPage(
                  context: context,
                  imagePath: AppRes.images.aboutEBook,
                  title: "Acesse o nosso eBook",
                  // TODO: Update summary and onPressedButton of eBook option
                  summary: "Lorem ipsum dolor sit amet, consectetur adipiscing"
                      " elit, sed do eiusmod tempor incididunt ut labore et "
                      "dolore",
                  onPressedButton: () {},
                );
              },
            ),
            SizedBox(height: 20),
            IconTextOutlinedButtonWidget(
              imagePath: AppRes.images.iconAboutTargets,
              title: "Targets",
              onPressed: () {
                goToAboutPage(
                  context: context,
                  imagePath: AppRes.images.aboutTargets,
                  title: "Baixe nossos targets",
                  // TODO: Update summary and onPressedButton of Targets option
                  summary: "Lorem ipsum dolor sit amet, consectetur adipiscing"
                      " elit, sed do eiusmod tempor incididunt ut labore et "
                      "dolore",
                  onPressedButton: () {},
                );
              },
            ),
            SizedBox(height: 20),
            IconTextOutlinedButtonWidget(
              imagePath: AppRes.images.iconAbout,
              title: "Sobre",
              onPressed: () {},
            ),
            SizedBox(height: 20),
            IconTextOutlinedButtonWidget(
              imagePath: AppRes.images.iconAboutFeedback,
              title: "Feedbacks",
              onPressed: () {
                goToAboutPage(
                  context: context,
                  imagePath: AppRes.images.aboutFeedback,
                  // TODO: Update summary and onPressedButton of Feedback option
                  title: "Avalie o aplicativo",
                  summary: "Lorem ipsum dolor sit amet, consectetur adipiscing"
                      " elit, sed do eiusmod tempor incididunt ut labore et "
                      "dolore ",
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
