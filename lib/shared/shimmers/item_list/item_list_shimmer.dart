import 'package:flutter/material.dart';
import 'package:moleculas_ar/shared/res/app_res.dart';
import 'package:moleculas_ar/shared/theme/app_theme.dart';
import 'package:shimmer/shimmer.dart';

class ItemListShimmer extends StatelessWidget {
  final int? listLength;

  const ItemListShimmer({Key? key, this.listLength}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const int defaultListLength = 6;

    return ListView.separated(
      itemCount: listLength ?? defaultListLength,
      itemBuilder: (context, index) => Shimmer.fromColors(
        baseColor: AppTheme.colors.light,
        highlightColor: AppTheme.colors.primaryLight,
        child: Container(
          width: double.maxFinite,
          height: AppRes.dimens.buttonMinHeight,
          decoration: BoxDecoration(
            color: AppTheme.colors.light,
            borderRadius: BorderRadius.circular(15),
            border: Border.all(width: 1, color: AppTheme.colors.stroke),
            boxShadow: [
              BoxShadow(
                color: AppTheme.colors.shadow,
                blurRadius: 5,
                offset: const Offset(0, 5),
              ),
            ],
          ),
        ),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: AppRes.dimens.appHorizontalMargin,
        vertical: AppRes.dimens.largeMargin,
      ),
      scrollDirection: Axis.vertical,
      physics: const BouncingScrollPhysics(),
      separatorBuilder: (BuildContext context, int index) =>
          SizedBox(height: AppRes.dimens.defaultVerticalMargin),
    );
  }
}
