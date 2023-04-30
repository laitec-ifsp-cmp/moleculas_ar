import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moleculas_ar/shared/theme/app_theme.dart';
import 'package:moleculas_ar/shared/widgets/no_format_link/no_format_link_widget.dart';

class DevInfoWidget extends StatelessWidget {
  final String imagePath;
  final String name;
  final String? description;
  final String? lattes;
  final String? linkedIn;

  const DevInfoWidget({
    Key? key,
    required this.imagePath,
    required this.name,
    this.description,
    this.lattes,
    this.linkedIn,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 0,
          child: Container(
            height: 60.h,
            width: 60.w,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(image: AssetImage(imagePath)),
            ),
          ),
        ),
        SizedBox(width: 10.h),
        Expanded(
          flex: 1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name).itemTitle,
              if (description != null) Text(description!).description,
              if (lattes != null)
                NoFormatLinkWidget(
                  url: lattes!,
                  child: Text(lattes!).linkText,
                ),
              if (linkedIn != null)
                NoFormatLinkWidget(
                  url: linkedIn!,
                  child: Text(linkedIn!).linkText,
                ),
            ],
          ),
        ),
      ],
    );
  }
}
