import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:moleculas_ar/shared/models/molecules_category_model.dart';

class HomeMoleculesRepository {
  Future<List<MoleculeCategoryModel>> getMoleculesCategories() async {
    const database = "assets/database/molecule_categories.json";

    final response = await rootBundle.loadString(database);
    final list = jsonDecode(response) as List;
    final moleculesCategories =
        list.map((e) => MoleculeCategoryModel.fromMap(e)).toList();

    return moleculesCategories;
  }
}
