import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moleculas_ar/shared/res/app_res.dart';
import 'package:moleculas_ar/shared/theme/app_theme.dart';

class DevTopicWidget extends StatelessWidget {
  final List<Widget> devInfoList;

  const DevTopicWidget({
    Key? key,
    required this.devInfoList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(AppRes.strings.loremIpsum).title,
        SizedBox(height: 10.h),
        ListView.separated(
          itemCount: devInfoList.length,
          itemBuilder: (context, dev) => devInfoList[dev],
          scrollDirection: Axis.vertical,
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (BuildContext context, int index) =>
              SizedBox(height: 10.h),
        ),
        SizedBox(height: 30.h),
      ],
    );
  }
}
