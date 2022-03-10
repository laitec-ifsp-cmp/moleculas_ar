import 'dart:convert';

class MoleculeModel {
  final String name;
  final String linearStructure;
  final String objectPath;
  final String iconPath;
  final String geometricStructureImagePath;

  MoleculeModel({
    required this.name,
    required this.linearStructure,
    required this.objectPath,
    required this.iconPath,
    required this.geometricStructureImagePath,
  });

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'linearStructure': linearStructure,
      'objectPath': objectPath,
      'iconPath': iconPath,
      'geometricStructureImagePath': geometricStructureImagePath,
    };
  }

  // TODO: Create and select default images for imagePath and geometricStructureImagePath
  factory MoleculeModel.fromMap(Map<String, dynamic> map) {
    return MoleculeModel(
      name: map['name'],
      linearStructure: map['linearStructure'],
      objectPath: map['objectPath'],
      iconPath: map['iconPath'] /*?? AppRes.images.defaultIconMolecule*/,
      geometricStructureImagePath: map['geometricStructureImagePath']
              /*?? AppRes.images.defaultGeometricStructure*/,
    );
  }

  String toJson() => json.encode(toMap());

  factory MoleculeModel.fromJson(String source) =>
      MoleculeModel.fromMap(json.decode(source));
}
