import 'package:flutter/material.dart';
import 'package:moleculas_ar/shared/theme/app_theme.dart';
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
              imagePath: AppTheme.images.iconAboutBook,
              label: "eBook",
              onPressed: () {},
            ),
            SizedBox(height: 20),
            IconTextOutlinedButtonWidget(
              imagePath: AppTheme.images.iconAboutTargets,
              label: "Targets",
              onPressed: () {},
            ),
            SizedBox(height: 20),
            IconTextOutlinedButtonWidget(
              imagePath: AppTheme.images.iconAbout,
              label: "Sobre",
              onPressed: () {},
            ),
            SizedBox(height: 20),
            IconTextOutlinedButtonWidget(
              imagePath: AppTheme.images.iconAboutFeedback,
              label: "Feedbacks",
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
