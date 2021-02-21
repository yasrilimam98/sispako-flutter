import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:flutter/services.dart';
import 'package:sispako/Style/constant.dart';
import 'package:sispako/Style/sizeconfig.dart';
import 'package:sispako/components/default_button.dart';
import 'package:sispako/screens/homes/home_screen.dart';
import 'package:sispako/screens/splash/components/onboarding_content.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  // Membuat array untuk menampung data text dan gambar
  List<Map<String, String>> onboardingData = [
    {
      "text": "Sistem Pendukung Keputusan Kontrasepsi",
      "image": "assets/images/splash1.png"
    },
    {
      "text": "Berisi Artikel Alat Kontrasepsi",
      "image": "assets/images/splash2.png"
    },
    {"text": "Pengguna Aktif KB", "image": "assets/images/splashbot.png"},
    {
      "text": "Menggunakan metode TOPSIS dalam pengambilan keputusan",
      "image": "assets/images/homesplash.png"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 3,
              // Swipe left or rigth
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: onboardingData.length,
                itemBuilder: (context, index) => OnboardingContent(
                  image: onboardingData[index]["image"],
                  text: onboardingData[index]['text'],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(20)),
                child: Column(
                  children: <Widget>[
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        onboardingData.length,
                        (index) => buildDot(index: index),
                      ),
                    ),
                    Spacer(flex: 3),
                    DefaultButton(
                      text: "Lanjutkan",
                      // Pindah halaman
                      press: () {
                        Navigator.pushNamed(context, HomePage.routeName);
                      },
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot({int index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? kPrimaryColor : Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
