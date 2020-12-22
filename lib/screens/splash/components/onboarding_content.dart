import 'package:flutter/material.dart';
import 'package:sispako/Style/constant.dart';
import 'package:sispako/Style/sizeconfig.dart';

class OnboardingContent extends StatelessWidget {
  const OnboardingContent({
    Key key,
    this.text,
    this.image,
  }) : super(key: key);
  // Deklarasikan text dan gambar dengan membuat fungsi
  final String text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Spacer(),
        Text(
          "SISPAKO",
          style: TextStyle(
            fontSize: getProportionateScreenWidth(36),
            color: kPrimaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          text,
          textAlign: TextAlign.center,
        ),
        Spacer(flex: 2),
        Image.asset(
          image,
          // Ngambil dari size config
          height: getProportionateScreenHeight(265),
          width: getProportionateScreenWidth(235),
        ),
      ],
    );
  }
}
