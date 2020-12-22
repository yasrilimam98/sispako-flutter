import 'package:flutter/material.dart';
import 'package:sispako/Style/sizeconfig.dart';
import 'components/body.dart';

class OnboardingScreen extends StatelessWidget {
  static String routeName = "/spllash";
  @override
  Widget build(BuildContext context) {
    // Memanggil dari size config untuk bagian splash
    SizeConfig().init(context);
    return Scaffold(
      //Style di body.dart
      body: Body(),
    );
  }
}
