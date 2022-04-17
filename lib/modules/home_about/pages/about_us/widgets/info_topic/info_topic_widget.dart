import 'package:flutter/material.dart';
import 'package:moleculas_ar/shared/res/app_res.dart';
import 'package:moleculas_ar/shared/theme/app_theme.dart';

class InfoTopicWidget extends StatelessWidget {
  final String title;
  final String description;

  const InfoTopicWidget({
    Key? key,
    required this.title,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title).title,
        SizedBox(height: AppRes.dimens.smallMargin),
        Text(
          "     $description",
          style: AppTheme.textStyles.summary,
          textAlign: TextAlign.justify,
        ),
        SizedBox(height: AppRes.dimens.largeMargin),
      ],
    );
  }
}
