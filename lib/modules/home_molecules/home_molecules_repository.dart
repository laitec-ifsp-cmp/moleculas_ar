import 'dart:convert';

import 'package:flutter/services.dart';

import 'package:moleculas_ar/shared/models/molecules_category_model.dart';

class HomeMoleculesRepository {
  Future<List<MoleculesCategoryModel>> getMoleculesCategories() async {
    const database = "assets/database/molecules.json";

    final response = await rootBundle.loadString(database);
    final list = jsonDecode(response) as List;
    final moleculesCategories =
        list.map((e) => MoleculesCategoryModel.fromMap(e)).toList();

    return moleculesCategories;
  }
}
