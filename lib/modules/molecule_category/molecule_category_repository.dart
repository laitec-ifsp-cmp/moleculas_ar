import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:moleculas_ar/shared/models/molecule_model.dart';
import 'package:moleculas_ar/shared/models/molecules_category_model.dart';

class MoleculeCategoryRepository {
  Future<List<MoleculeModel>> getMolecules(MoleculeCategories category) async {
    const database = "assets/database/molecules.json";

    final response = await rootBundle.loadString(database);
    final list = jsonDecode(response) as List;
    final molecules = list
        .map((e) => MoleculeModel.fromMap(e))
        .where((element) => element.category == category)
        .toList();

    return molecules;
  }
}
