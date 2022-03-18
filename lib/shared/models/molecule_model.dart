import 'dart:convert';

class MoleculeModel {
  final String name;
  final String molecularFormula;
  final String objectPath;
  final String iconPath;
  final String structuralFormulaImagePath;

  MoleculeModel({
    required this.name,
    required this.molecularFormula,
    required this.objectPath,
    required this.iconPath,
    required this.structuralFormulaImagePath,
  });

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'molecularFormula': molecularFormula,
      'objectPath': objectPath,
      'iconPath': iconPath,
      'structuralFormulaImagePath': structuralFormulaImagePath,
    };
  }

  factory MoleculeModel.fromMap(Map<String, dynamic> map) {
    return MoleculeModel(
      name: map['name'],
      molecularFormula: map['molecularFormula'],
      objectPath: map['objectPath'],
      iconPath: map['iconPath'],
      structuralFormulaImagePath: map['structuralFormulaImagePath'],
    );
  }

  String toJson() => json.encode(toMap());

  factory MoleculeModel.fromJson(String source) =>
      MoleculeModel.fromMap(json.decode(source));
}
