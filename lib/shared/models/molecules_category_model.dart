import 'dart:convert';

import 'molecule_model.dart';

class MoleculesCategoryModel {
  final String title;
  final String iconPath;
  final List<MoleculeModel> molecules;

  MoleculesCategoryModel({
    required this.title,
    required this.iconPath,
    required this.molecules,
  });

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'iconPath': iconPath,
      'molecules': molecules.map((x) => x.toMap()).toList(),
    };
  }

  factory MoleculesCategoryModel.fromMap(Map<String, dynamic> map) {
    return MoleculesCategoryModel(
      title: map['title'],
      iconPath: map['iconPath'],
      molecules: List<MoleculeModel>.from(
          map['molecules']?.map((x) => MoleculeModel.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory MoleculesCategoryModel.fromJson(String source) =>
      MoleculesCategoryModel.fromMap(json.decode(source));
}
