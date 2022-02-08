abstract class IAppImages {
  String get logo;
  String get arrowLeft;
  String get arrowRight;
  String get onBoardingDna;
  String get onBoardingDna3d;
  String get onBoardingDnaHolo;
}

class AppImages implements IAppImages {
  @override
  String get logo => "assets/images/logo.png";

  @override
  String get arrowLeft => "assets/images/arrow_left.svg";

  @override
  String get arrowRight => "assets/images/arrow_right.svg";

  @override
  String get onBoardingDna => "assets/images/on_boarding_dna.svg";

  @override
  String get onBoardingDna3d => "assets/images/on_boarding_dna_3d.svg";

  @override
  String get onBoardingDnaHolo => "assets/images/on_boarding_dna_holo.svg";
}