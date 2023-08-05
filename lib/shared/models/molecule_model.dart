import 'dart:convert';

import 'package:moleculas_ar/shared/models/molecules_category_model.dart';

import '../utils/app_enum.dart';

class MoleculeModel {
  final MoleculeCategories category;
  final String name;
  final String molecularFormula;
  final String objectPath;
  final String iconPath;
  final String structuralFormulaImagePath;
  final String targetImagePath;

  MoleculeModel({
    required this.category,
    required this.name,
    required this.molecularFormula,
    required this.objectPath,
    required this.iconPath,
    required this.structuralFormulaImagePath,
    required this.targetImagePath,
  });

  Map<String, dynamic> toMap() {
    return {
      'category': category,
      'name': name,
      'molecularFormula': molecularFormula,
      'objectPath': objectPath,
      'iconPath': iconPath,
      'structuralFormulaImagePath': structuralFormulaImagePath,
      'targetImagePath': targetImagePath,
    };
  }

  factory MoleculeModel.fromMap(Map<String, dynamic> map) {
    return MoleculeModel(
      category: enumFromString(MoleculeCategories.values, map['category']),
      name: map['name'],
      molecularFormula: map['molecularFormula'],
      objectPath: map['objectPath'],
      iconPath: map['iconPath'],
      structuralFormulaImagePath: map['structuralFormulaImagePath'],
      targetImagePath: map['targetImagePath'],
    );
  }

  String toJson() => json.encode(toMap());

  factory MoleculeModel.fromJson(String source) =>
      MoleculeModel.fromMap(json.decode(source));
}
