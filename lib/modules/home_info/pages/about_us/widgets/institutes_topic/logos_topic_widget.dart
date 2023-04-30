import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LogosTopicWidget extends StatelessWidget {
  final Text title;
  final List<Widget> logoList;

  const LogosTopicWidget({
    Key? key,
    required this.title,
    required this.logoList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        title,
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
