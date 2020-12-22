import 'package:flutter/material.dart';
import 'package:sispako/Style/constant.dart';
import 'package:sispako/routs.dart';
import 'package:sispako/screens/splash/onboarding_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        //Deklarasi font dan warna Text
        scaffoldBackgroundColor: Colors.white,
        fontFamily: "Muli",
        textTheme: TextTheme(
          bodyText1: TextStyle(color: kTextColor),
          bodyText2: TextStyle(color: kTextColor),
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      // home: SplashScreen(),
      initialRoute: OnboardingScreen.routeName,
      routes: routes,
    );
  }
}
