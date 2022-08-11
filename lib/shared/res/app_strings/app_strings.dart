abstract class IAppStrings {
  String get accessEBook;
  String get about;
  String get appInfo;
  String get appName;
  String get clickHere;
  String get downloadTargets;
  String get eBook;
  String get feedback;
  String get giveFeedback;
  String get longLoremIpsum;
  String get loremIpsum;
  String get mediumLoremIpsum;
  String get molecules;
  String get permissionRequired;
  String get permissionRequiredExplanation;
  String get skip;
  String get shortLoremIpsum;
  String get targets;
}

class AppStrings implements IAppStrings {
  @override
  String get accessEBook => "Acesse o nosso eBook";

  @override
  String get about => "Sobre";

  @override
  String get appInfo => "Informações do APP";

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
  String get skip => "Pular";

  @override
  String get longLoremIpsum => "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore.";

  @override
  String get loremIpsum => "Lorem ipsum";

  @override
  String get mediumLoremIpsum => "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore.";

  @override
  String get molecules => "Moléculas";

  @override
  String get permissionRequired => "Permissão necessária";

  @override
  String get permissionRequiredExplanation => "AR Moléculas precisa de permissão para acessar a câmera do dispositivo. Selecione 'Permissões' nas informações do aplicativo para ativá-la novamente.";

  @override
  String get shortLoremIpsum => "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore";

  @override
  String get targets => "Targets";
}