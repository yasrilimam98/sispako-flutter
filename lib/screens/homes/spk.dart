import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp1());
}

class MyApp1 extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp1> {
  int number = 0;
  double iud = 0.0;
  double kontap = 0.0;
  double implant = 0.0;
  double suntik = 0.0;
  double pil = 0.0;
  double kondom = 0.0;
  double nilaiTertinggi = 0.0;
  String alatTertinggi = "";
  List namaAlat = ["IUD", "Kontap", "Implant", "Suntik", "Pil", "Kondom"];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Perhitungan TOPSIS"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                alatTertinggi,
                style: TextStyle(fontSize: 40),
              ),
              Text(
                nilaiTertinggi.toString(),
                style: TextStyle(fontSize: 40),
              ),
              RaisedButton(
                child: Text("Hitung SPK"),
                //Isi dengan inputan atau value dari dropdown
                onPressed: () => hitungTopsis(1, 4, 2, 1),
              )
            ],
          ),
        ),
      ),
    );
  }

  void hitungTopsis(
      num usia, num beratBadan, num gangguanKesehatan, num jumlahAnak) {
    setState(() {
      List inputan = [usia, beratBadan, gangguanKesehatan, jumlahAnak];
      //Tabel Ektraksi Kriteria dan Alternatif
      List tabelAlternatif = [
        [5, 4, 1, 4],
        [2, 4, 4, 1],
        [3, 4, 4, 2],
        [5, 4, 4, 3],
        [4, 4, 4, 3],
        [4, 4, 4, 2]
      ];
      List bobot = [20, 30, 30, 20];
      var jmlBaris = tabelAlternatif.length;
      var jmlKolom = tabelAlternatif[0].length;
      List<double> tabelAkarMatriks = new List(jmlKolom);
      List<double> tabelSolusiPositif = new List(jmlKolom);
      List<double> tabelSolusiNegatif = new List(jmlKolom);
      List<double> tabelAkarSolusiPositif = new List(jmlBaris);
      List<double> tabelAkarSolusiNegatif = new List(jmlBaris);
      List<double> tabelNilaiAkhir = new List(jmlBaris);
      var tabelTernormalisasi =
          List.generate(jmlBaris, (i) => List(jmlKolom), growable: false);
      var tabelKeputusanTerbobot =
          List.generate(jmlBaris, (i) => List(jmlKolom), growable: false);
      var tabelJarakPositif =
          List.generate(jmlBaris, (i) => List(jmlKolom), growable: false);
      var tabelJarakNegatif =
          List.generate(jmlBaris, (i) => List(jmlKolom), growable: false);
      //Hitung x1 s/d x4
      for (var i = 0; i < jmlKolom; i++) {
        var jml = 0;
        for (var j = 0; j < jmlBaris; j++) {
          jml = jml + pow(tabelAlternatif[j][i], 2);
        }
        double hasilAkar = sqrt(jml);
        tabelAkarMatriks[i] = double.parse(hasilAkar.toStringAsFixed(2));
      }
      //Hitung r11 s/d r64
      for (var i = 0; i < jmlKolom; i++) {
        for (var j = 0; j < jmlBaris; j++) {
          var hsl = tabelAlternatif[j][i] / tabelAkarMatriks[i];
          tabelTernormalisasi[j][i] = double.parse(hsl.toStringAsFixed(2));
        }
      }
      //Hitung Matriks Keputusan Terbobot
      for (var i = 0; i < jmlKolom; i++) {
        for (var j = 0; j < jmlBaris; j++) {
          var hsl = tabelTernormalisasi[j][i] * bobot[i] * inputan[i];
          tabelKeputusanTerbobot[j][i] = double.parse(hsl.toStringAsFixed(2));
        }
      }
      //Hitung Solusi Ideal Positif & Negatif
      for (var i = 0; i < jmlKolom; i++) {
        List<double> dataPositif = new List(jmlBaris);
        for (var j = 0; j < jmlBaris; j++) {
          dataPositif[j] = tabelKeputusanTerbobot[j][i];
        }
        tabelSolusiPositif[i] = dataPositif.reduce(max);
        tabelSolusiNegatif[i] = dataPositif.reduce(min);
      }
      //Hitung Jarak Solusi Ideal Positif & Negatif
      for (var i = 0; i < jmlKolom; i++) {
        var positif = 0.0;
        var negatif = 0.0;
        for (var j = 0; j < jmlBaris; j++) {
          positif =
              pow(tabelKeputusanTerbobot[j][i] - tabelSolusiPositif[i], 2);
          negatif =
              pow(tabelKeputusanTerbobot[j][i] - tabelSolusiNegatif[i], 2);
          tabelJarakPositif[j][i] = double.parse(positif.toStringAsFixed(2));
          tabelJarakNegatif[j][i] = double.parse(negatif.toStringAsFixed(2));
        }
      }
      //Hitung Jumlah Akar Positif & Negatif
      for (var i = 0; i < jmlBaris; i++) {
        var sumPositif = 0.0;
        var sumNegatif = 0.0;
        for (var j = 0; j < jmlKolom; j++) {
          sumPositif = sumPositif + tabelJarakPositif[i][j];
          sumNegatif = sumNegatif + tabelJarakNegatif[i][j];
        }
        tabelAkarSolusiPositif[i] =
            double.parse(sqrt(sumPositif).toStringAsFixed(2));
        tabelAkarSolusiNegatif[i] =
            double.parse(sqrt(sumNegatif).toStringAsFixed(2));
      }
      //Menentukan nilai preferensi untuk setiap alternatif
      for (var i = 0; i < jmlBaris; i++) {
        var nilaiAkhir = tabelAkarSolusiNegatif[i] /
            (tabelAkarSolusiNegatif[i] + tabelAkarSolusiPositif[i]);
        tabelNilaiAkhir[i] = double.parse(nilaiAkhir.toStringAsFixed(2));
      }
      //Nilai Tertinggi
      nilaiTertinggi = tabelNilaiAkhir.reduce(max); //Hasil Akhir
      //Alat Tertinggi
      for (var i = 0; i < jmlBaris; i++) {
        if (nilaiTertinggi == tabelNilaiAkhir[i]) {
          alatTertinggi = namaAlat[i]; //Hasil Akhir
          break;
        }
      }
      //Inisilasisai Nilai Akhir
      iud = tabelNilaiAkhir[0];
      kontap = tabelNilaiAkhir[1];
      implant = tabelNilaiAkhir[2];
      suntik = tabelNilaiAkhir[3];
      pil = tabelNilaiAkhir[4];
      kondom = tabelNilaiAkhir[5];
      //Print Hasil Akhir
      print("========INPUTAN========");
      print("Usia : " + usia.toString());
      print("Berat Badan : " + beratBadan.toString());
      print("Gangguan Kesehatan : " + gangguanKesehatan.toString());
      print("Jumlah Anak : " + jumlahAnak.toString());
      print("======HASIL AKHIR======");
      print("IUD : " + iud.toString());
      print("Kontap : " + kontap.toString());
      print("Implant : " + implant.toString());
      print("Suntik : " + suntik.toString());
      print("Pil : " + pil.toString());
      print("Kondom : " + kondom.toString());
      print("=======TERTINGGI=======");
      print(alatTertinggi + " dengan nilai " + nilaiTertinggi.toString());
    });
  }
}
