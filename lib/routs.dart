import 'package:flutter/widgets.dart';
import 'package:sispako/screens/homes/home_screen.dart';
import 'package:sispako/screens/splash/onboarding_screen.dart';

final Map<String, WidgetBuilder> routes = {
  OnboardingScreen.routeName: (context) => OnboardingScreen(),
  HomePage.routeName: (context) => HomePage(),
};
