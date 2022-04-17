import 'package:flutter/material.dart';
import 'package:moleculas_ar/shared/res/app_res.dart';
import 'package:moleculas_ar/shared/theme/app_theme.dart';

class DevInfoWidget extends StatelessWidget {
  final String imagePath;
  final String name;
  final String description;

  const DevInfoWidget({
    Key? key,
    required this.imagePath,
    required this.name,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 0,
          child: Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(image: AssetImage(imagePath)),
            ),
          ),
        ),
        SizedBox(width: AppRes.dimens.smallMargin),
        Expanded(
          flex: 1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name).itemTitle,
              Text(description).description,
            ],
          ),
        ),
      ],
    );
  }
}
