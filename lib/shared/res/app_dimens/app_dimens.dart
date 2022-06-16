abstract class IAppDimens {
  double get appBarHeight;
  double get appHorizontalMargin;
  double get buttonMinHeight;
  double get defaultVerticalMargin;
  double get hugeMargin;
  double get largeMargin;
  double get smallMargin;
}

class AppDimens implements IAppDimens {
  @override
  double get appBarHeight => 104;

  @override
  double get appHorizontalMargin => 24;

  @override
  double get buttonMinHeight => 80;

  @override
  double get defaultVerticalMargin => 20;

  @override
  double get hugeMargin => 40;

  @override
  double get largeMargin => 30;

  @override
  double get smallMargin => 10;
}