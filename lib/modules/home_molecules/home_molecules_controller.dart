import 'package:flutter/foundation.dart';

import 'home_molecules_repository.dart';
import 'package:moleculas_ar/app_state.dart';
import 'package:moleculas_ar/shared/models/molecules_category_model.dart';

class HomeMoleculeController {
  final stateNotifier = ValueNotifier<AppState>(AppState.empty);
  set state(AppState state) => stateNotifier.value = state;
  AppState get state => stateNotifier.value;

  List<MoleculesCategoryModel>? moleculesCategory;

  final repository = HomeMoleculesRepository();

  void getMoleculesCategory() async {
    state = AppState.loading;
    moleculesCategory = await repository.getMoleculesCategory();
    state = AppState.success;
  }
}
