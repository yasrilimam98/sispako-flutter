import 'package:flutter/material.dart';
import 'package:sispako/model/data.dart';

class HomePage extends StatelessWidget {
  static String routeName = "/homepage";
  @override
  Widget build(BuildContext context) {
    // Membuat ukuran tinggi
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color(0xFFE9E9E9),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.vertical(top: Radius.circular(40)),
        child: BottomNavigationBar(
          iconSize: 40,
          selectedIconTheme: IconThemeData(
            color: const Color(0xFF200087),
          ),
          unselectedIconTheme: IconThemeData(
            color: Colors.black12,
          ),
          items: [
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Icon(Icons.home),
              ),
              title: Text(
                "Home",
                style: const TextStyle(color: Colors.white),
              ),
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Icon(Icons.home),
              ),
              title: Text(
                "Search",
                style: const TextStyle(color: Colors.white),
              ),
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Icon(Icons.home),
              ),
              title: Text(
                "Profile",
                style: const TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 0,
            height: height * 0.35,
            left: 0,
            right: 0,
            child: ClipRRect(
              borderRadius: const BorderRadius.vertical(
                bottom: const Radius.circular(40),
              ),
              child: Container(
                color: Colors.white,
              ),
            ),
          ),
          Positioned(
            top: height * 0.38,
            left: 0,
            right: 0,
            child: Container(
              height: height * 0.50,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(
                      bottom: 8,
                      left: 32,
                      right: 16,
                    ),
                    child: Text(
                      "Artikel Kontrasepsi",
                      style: const TextStyle(
                          color: Colors.blueGrey,
                          fontSize: 16,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: <Widget>[
                          SizedBox(
                            width: 32,
                          ),
                          // Perulangan data.dart
                          for (int i = 0; i < data.length; i++)
                            _DataCard(
                              data: data[i],
                            ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(
                          bottom: 10, left: 32, right: 32),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            const Color(0xFF20008B),
                            const Color(0xFF200087),
                          ],
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(
                            width: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 16.0, left: 16),
                            child: Text(
                              "SUPPORT",
                              style: TextStyle(
                                  color: Colors.white70,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 4.0, left: 16),
                            child: Text(
                              "ROBO KONTRASEPSI",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontWeight: FontWeight.w800),
                            ),
                          ),
                          Expanded(
                            child: Row(
                              children: <Widget>[
                                SizedBox(
                                  width: 113,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(25)),
                                    color: const Color(0xFF5B4D9D),
                                  ),
                                  padding: const EdgeInsets.all(10),
                                  child: Image.asset(
                                    "assets/images/bot.png",
                                    width: 100,
                                    height: 60,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _DataCard extends StatelessWidget {
  final Data data;

  const _DataCard({Key key, @required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        right: 20,
        bottom: 10,
      ),
      child: Material(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        elevation: 4,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Flexible(
              fit: FlexFit.tight,
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                child: Image.asset(
                  data.imagePath,
                  width: 150,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Flexible(
              fit: FlexFit.tight,
              child: Padding(
                padding: const EdgeInsets.only(left: 12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      data.jenis,
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: Colors.blueGrey),
                    ),
                    Text(
                      data.name,
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                          color: Colors.black),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.access_time,
                          color: Colors.black12,
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Text(
                          data.keterangan,
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              color: Colors.blueGrey),
                        ),
                      ],
                    ),
                    SizedBox(height: 16),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
