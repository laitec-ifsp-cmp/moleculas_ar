import 'package:flutter/material.dart';
import 'package:moleculas_ar/shared/res/app_res.dart';
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
        Text(AppRes.strings.loremIpsum).title,
        SizedBox(height: AppRes.dimens.smallMargin),
        SizedBox(
          width: double.maxFinite,
          child: Wrap(
            alignment: WrapAlignment.spaceEvenly,
            spacing: AppRes.dimens.smallMargin,
            runSpacing: AppRes.dimens.smallMargin,
            children: logoList,
          ),
        )
      ],
    );
  }
}
