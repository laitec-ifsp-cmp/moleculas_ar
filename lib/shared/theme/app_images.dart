abstract class IAppImages {
  String get aboutEBook;
  String get aboutFeedback;
  String get aboutTargets;
  String get logo;
  String get arrowLeft;
  String get arrowRight;
  String get iconDnaMolecule;
  String get iconAbout;
  String get iconAboutBook;
  String get iconAboutFeedback;
  String get iconAboutTargets;
  String get iconGear;
  String get iconMolecule;
  String get iconSingleMolecule;
  String get iconTarget;
  String get iconThreeMolecules;
  String get onBoardingDna;
  String get onBoardingDna3d;
  String get onBoardingDnaHolo;
}

class AppImages implements IAppImages {
  @override
  String get aboutEBook => "assets/images/about_eBook.svg";

  @override
  String get aboutFeedback => "assets/images/about_feedback.svg";

  @override
  String get aboutTargets => "assets/images/about_targets.svg";

  @override
  String get logo => "assets/images/logo.png";

  @override
  String get arrowLeft => "assets/images/arrow_left.svg";

  @override
  String get arrowRight => "assets/images/arrow_right.svg";

  @override
  String get iconDnaMolecule => "assets/images/icon_dna_molecule.png";

  @override
  String get iconGear => "assets/images/icon_gear.svg";

  @override
  String get iconAbout => "assets/images/icon_about.png";

  @override
  String get iconAboutBook => "assets/images/icon_about_book.png";

  @override
  String get iconAboutFeedback => "assets/images/icon_about_feedback.png";

  @override
  String get iconAboutTargets => "assets/images/icon_about_targets.png";

  @override
  String get iconMolecule => "assets/images/icon_molecule.svg";

  @override
  String get iconSingleMolecule => "assets/images/icon_single_molecule.png";

  @override
  String get iconTarget => "assets/images/icon_target.svg";

  @override
  String get iconThreeMolecules => "assets/images/icon_three_molecules.png";

  @override
  String get onBoardingDna => "assets/images/on_boarding_dna.svg";

  @override
  String get onBoardingDna3d => "assets/images/on_boarding_dna_3d.svg";

  @override
  String get onBoardingDnaHolo => "assets/images/on_boarding_dna_holo.svg";
}