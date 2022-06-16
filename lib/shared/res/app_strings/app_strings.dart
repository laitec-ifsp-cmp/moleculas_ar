abstract class IAppStrings {
  String get accessEBook;
  String get about;
  String get appName;
  String get clickHere;
  String get downloadTargets;
  String get eBook;
  String get feedback;
  String get giveFeedback;
  String get jump;
  String get longLoremIpsum;
  String get loremIpsum;
  String get mediumLoremIpsum;
  String get molecules;
  String get shortLoremIpsum;
  String get targets;
}

class AppStrings implements IAppStrings {
  @override
  String get accessEBook => "Acesse o nosso eBook";

  @override
  String get about => "Sobre";

  @override
  String get appName => "Moléculas AR";

  @override
  String get clickHere => "Clique aqui";

  @override
  String get downloadTargets => "Baixe nossos targets";

  @override
  String get eBook => "eBook";

  @override
  String get feedback => "Feedback";

  @override
  String get giveFeedback => "Avalie o aplicativo";

  @override
  String get jump => "Pular";

  @override
  String get longLoremIpsum => "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore.";

  @override
  String get loremIpsum => "Lorem ipsum";

  @override
  String get mediumLoremIpsum => "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore.";

  @override
  String get molecules => "Moléculas";

  @override
  String get shortLoremIpsum => "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore";

  @override
  String get targets => "Targets";
}