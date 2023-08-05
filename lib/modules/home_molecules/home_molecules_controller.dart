import 'package:flutter/foundation.dart';
import 'package:moleculas_ar/shared/utils/app_state.dart';
import 'package:moleculas_ar/shared/models/molecules_category_model.dart';

import 'home_molecules_repository.dart';

class HomeMoleculesController {
  final stateNotifier = ValueNotifier<AppState>(AppState.empty);
  set state(AppState state) => stateNotifier.value = state;
  AppState get state => stateNotifier.value;

  List<MoleculeCategoryModel>? moleculesCategories;

  final repository = HomeMoleculesRepository();

  void getMoleculesCategories() async {
    state = AppState.loading;
    moleculesCategories = await repository.getMoleculesCategories();
    state = AppState.success;
  }
}
