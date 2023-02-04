import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moleculas_ar/shared/theme/app_theme.dart';

class InstitutesTopicWidget extends StatelessWidget {
  final List<Widget> logoList;

  const InstitutesTopicWidget({
    Key? key,
    required this.logoList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Instituições").title,
        SizedBox(height: 10.h),
        SizedBox(
          width: double.maxFinite,
          child: Wrap(
            alignment: WrapAlignment.spaceEvenly,
            spacing: 10.h,
            runSpacing: 10.h,
            children: logoList,
          ),
        )
      ],
    );
  }
}
