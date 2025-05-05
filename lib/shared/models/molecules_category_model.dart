import 'dart:convert';

import 'package:moleculas_ar/shared/utils/app_enum.dart';

class MoleculeCategoriesConstants {
  static int acidosNucleicos = 0;
  static int geometriaMolecular = 1;
  static int isomeriaGeometrica = 2;
  static int isomeriaOptica = 3;
  static int aminoacidos = 4;
  static int peptidios = 5;
}

enum MoleculeCategories {
  acidosNucleicos,
  geometriaMolecular,
  isomeriaGeometrica,
  isomeriaOptica,
  aminoacidos,
  peptidios,
}

class MoleculeCategoryModel {
  final MoleculeCategories category;
  final String title;
  final String iconPath;

  MoleculeCategoryModel({
    required this.category,
    required this.title,
    required this.iconPath,
  });

  Map<String, dynamic> toMap() {
    return {
      'category': category,
      'title': title,
      'iconPath': iconPath,
    };
  }

  factory MoleculeCategoryModel.fromMap(Map<String, dynamic> map) {
    return MoleculeCategoryModel(
      category: enumFromString(MoleculeCategories.values, map['category']),
      title: map['title'],
      iconPath: map['iconPath'],
    );
  }

  String toJson() => json.encode(toMap());

  factory MoleculeCategoryModel.fromJson(String source) =>
      MoleculeCategoryModel.fromMap(json.decode(source));
}
