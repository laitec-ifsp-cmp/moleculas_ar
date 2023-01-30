import 'package:flutter/material.dart';
import 'package:moleculas_ar/modules/ar_molecule_target/ar_molecule_target_page.dart';

import 'modules/home_navigation/home_navigation_page.dart';
import 'modules/on_boarding/on_boarding_page.dart';
import 'modules/splash/splash_page.dart';
import 'shared/res/app_res.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppRes.strings.appName,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      debugShowCheckedModeBanner: false,
      initialRoute: "/splash",
      routes: {
        "/splash": (context) => const SplashPage(),
        "/on_boarding": (context) => const OnBoardingPage(),
        "/home_navigation": (context) => const HomeNavigationPage(),
        "/ar_molecule_target": (context) => const ArMoleculeTargetPage(),
      },
    );
  }
}
