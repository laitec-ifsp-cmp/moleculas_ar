import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moleculas_ar/modules/home_info/pages/about_us/about_us_page.dart';
import 'package:moleculas_ar/modules/home_info/pages/info/info_page.dart';
import 'package:moleculas_ar/shared/res/app_res.dart';
import 'package:moleculas_ar/shared/widgets/shared_widgets.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeInfoPage extends StatelessWidget {
  const HomeInfoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 30.h, horizontal: 24.w),
        child: Column(
          children: [
            IconTextOutlinedButtonWidget(
              imagePath: AppRes.images.iconAboutBook,
              title: AppRes.strings.eBook,
              onPressed: () => goToInfoPage(
                context: context,
                imagePath: AppRes.images.aboutEBook,
                title: AppRes.strings.accessEBook,
                summary:
                    "Serão apresentados textos complementares referentes ao "
                    "conceito de realidade aumentada e os conceitos químicos "
                    "abordados",
                onPressedButton: null,
              ),
            ),
            SizedBox(height: 20.h),
            IconTextOutlinedButtonWidget(
              imagePath: AppRes.images.iconAboutTargets,
              title: AppRes.strings.targets,
              onPressed: () => goToInfoPage(
                context: context,
                imagePath: AppRes.images.aboutTargets,
                title: AppRes.strings.downloadTargets,
                summary:
                    "Para a visualização e análise das estruturas químicas, "
                    "os targets correspondem aos respectivos objetos "
                    "moleculares para a observação 3D em Realidade Aumentada",
                onPressedButton: () async {
                  Uri uri = Uri.parse(
                      "https://drive.google.com/file/d/1_T4XpAO_gKZyNNw8P0ljor6jti92W4_e/view?usp=sharing");
                  if (await canLaunchUrl(uri)) {
                    await launchUrl(uri, mode: LaunchMode.externalApplication);
                  }
                },
              ),
            ),
            SizedBox(height: 20.h),
            IconTextOutlinedButtonWidget(
              imagePath: AppRes.images.iconAbout,
              title: AppRes.strings.about,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const AboutUsPage()));
              },
            ),
            SizedBox(height: 20.h),
            IconTextOutlinedButtonWidget(
              imagePath: AppRes.images.iconAboutFeedback,
              title: AppRes.strings.feedback,
              onPressed: () => goToInfoPage(
                context: context,
                imagePath: AppRes.images.aboutFeedback,
                title: AppRes.strings.giveFeedback,
                summary: "",
                onPressedButton: null,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void goToInfoPage({
    required dynamic context,
    required String imagePath,
    required String title,
    required String summary,
    required VoidCallback? onPressedButton,
  }) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => InfoPage(
          imagePath: imagePath,
          title: title,
          summary: summary,
          onPressedButton: onPressedButton,
        ),
      ),
    );
  }
}
