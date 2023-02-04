import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moleculas_ar/shared/theme/app_theme.dart';
import 'package:url_launcher/url_launcher.dart';

class DevInfoWidget extends StatelessWidget {
  final String imagePath;
  final String name;
  final String description;
  final String lattes;

  const DevInfoWidget({
    Key? key,
    required this.imagePath,
    required this.name,
    required this.description,
    required this.lattes,
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
              Text(description).description,
              InkWell(
                onTap: () async {
                  Uri uri = Uri.parse(lattes);
                  if (await canLaunchUrl(uri)) {
                    await launchUrl(uri, mode: LaunchMode.externalApplication);
                  }
                },
                child: Text(
                  lattes,
                  style: GoogleFonts.poppins(
                    fontSize: 12.sp,
                    color: AppTheme.colors.textSecondary,
                    fontWeight: FontWeight.normal,
                    decoration: TextDecoration.underline,
                  ),
                ),
                highlightColor: Colors.transparent,
                splashColor: Colors.transparent,
              )
            ],
          ),
        ),
      ],
    );
  }
}
