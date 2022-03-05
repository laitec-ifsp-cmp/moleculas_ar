import 'package:flutter/material.dart';
import 'package:moleculas_ar/modules/ar_molecule_target/ar_molecule_target_page.dart';

import 'modules/home_navigation/home_navigation_page.dart';
import 'modules/on_boarding/on_boarding_page.dart';
import 'modules/splash/splash_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Moléculas AR",
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      debugShowCheckedModeBanner: false,
      initialRoute: "/splash",
      routes: {
        "/splash": (context) => SplashPage(),
        "/on_boarding": (context) => OnBoardingPage(),
        "/home_navigation": (context) => HomeNavigationPage(),
        "/ar_molecule_target": (context) => ArMoleculeTargetPage(),
      },
    );
  }
}
