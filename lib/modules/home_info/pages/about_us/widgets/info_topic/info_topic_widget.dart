import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
        SizedBox(height: 10.h),
        Text(
          "     $description",
          style: AppTheme.textStyles.summary,
          textAlign: TextAlign.justify,
        ),
      ],
    );
  }
}
