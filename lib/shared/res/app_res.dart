import 'package:moleculas_ar/shared/res/app_strings/app_strings.dart';

import 'app_images/app_images.dart';

class AppRes {
  static final AppRes instance = AppRes();

  final _appImages = AppImages();
  static AppImages get images => instance._appImages;

  final _appStrings = AppStrings();
  static AppStrings get strings => instance._appStrings;
}