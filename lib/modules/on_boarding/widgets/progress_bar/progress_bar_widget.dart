import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:moleculas_ar/shared/theme/app_theme.dart';

class ProgressBarWidget extends StatelessWidget {
  final int totalPage;
  final int currentPage;
  final VoidCallback onBackPressed;
  final VoidCallback onNextPressed;

  const ProgressBarWidget({
    Key? key,
    required this.totalPage,
    required this.currentPage,
    required this.onBackPressed,
    required this.onNextPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        currentPage > 0
            ? OutlinedButton(
                onPressed: onBackPressed,
                child: SvgPicture.asset(
                  AppTheme.images.arrowLeft,
                  width: 20,
                  height: 20,
                ),
                style: OutlinedButton.styleFrom(
                  backgroundColor: AppTheme.colors.background,
                  shadowColor: AppTheme.colors.light,
                  shape: CircleBorder(),
                  fixedSize: Size(40, 40),
                ),
              )
            : Container(
                margin: EdgeInsets.symmetric(horizontal: 11),
                height: 40,
                width: 40),
        ListView.separated(
          itemCount: totalPage,
          itemBuilder: (context, index) => Container(
            height: index == currentPage ? 13 : 10,
            width: index == currentPage ? 13 : 10,
            decoration: BoxDecoration(
                color: index == currentPage
                    ? AppTheme.colors.primary
                    : AppTheme.colors.light,
                shape: BoxShape.circle),
          ),
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          separatorBuilder: (BuildContext context, int index) =>
              SizedBox(width: 10),
        ),
        OutlinedButton(
          onPressed: onNextPressed,
          child: SvgPicture.asset(AppTheme.images.arrowRight),
          style: OutlinedButton.styleFrom(
            backgroundColor: AppTheme.colors.primary,
            shadowColor: AppTheme.colors.light,
            shape: CircleBorder(),
            fixedSize: Size(48, 48),
          ),
        ),
      ],
    );
  }
}
