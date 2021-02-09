import 'dart:ffi';

import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp1());
}

class MyApp1 extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class Rangking {
  double nilai;
  String alat;

  Rangking({this.nilai, this.alat});
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
  String detailRangking = "";
  List<Rangking> listRangking = [];
  List namaAlat = ["IUD", "Kontap", "Implant", "Suntik", "Pil", "Kondom"];

  //Usia
  List<String> _listUsia = [
    '22 - 27 tahun',
    '28 - 33 tahun',
    '34 - 39 tahun',
    '40 - 45 tahun',
    '46 - 50 tahun'
  ];
  List<int> listBobotUsia = [5, 4, 3, 2, 1];
  String _selectedUsia = "22 - 27 tahun";
  int valueUsia = 5;

  //Berat Badan
  List<String> _listBeratBadan = ['45 sd 65 Kg', '70 Kg'];
  List<int> listBobotBeratBadan = [4, 1];
  String _selectedBeratBadan = "45 sd 65 Kg";
  int valueBeratBadan = 4;

  //Gangguan Kesehatan
  List<String> _listGangguanKesehatan = [
    'Tidak ada penyakit',
    'Pusing',
    'Migran',
    'Lever',
    'Jantung',
    'Pendarahan',
    'Darah Tinggi',
    'Stroke',
    'Diabetes',
    'Kanker Payudara',
    'Tumor',
  ];
  List<int> listBobotGangguanKesehatan = [
    5,
    5,
    4,
    3,
    3,
    3,
    3,
    2,
    2,
    1,
    1
  ]; //Tinggal ubah angka di dalam listBobotGangguanKesehatan sesuai nilai bobot dari listGangguanKesehatan (Urut)
  String _selectedGangguanKesehatan = "Tidak ada penyakit";
  int valueGangguanKesehatan = 5;

  // //Jumlah Anak
  List<String> _listJumlahAnak = ['Anak 1', 'Anak 2', 'Anak 3', 'Anak 4'];
  List<int> listBobotJumlahAnak = [4, 3, 2, 1];
  String _selectedJumlahAnak = "Anak 1";
  int valueJumlahAnak = 4;

  String namaLengkap = "";
  String keluhan = "";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("PEMILIHAN ALAT"),
        ),
        body: Center(
          child: new ListView(
            children: <Widget>[
              new Container(
                margin: EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new TextField(
                        decoration: new InputDecoration(
                            hintText: "Nama Lengkap",
                            labelText: "Nama Lengkap",
                            border: new OutlineInputBorder(
                                borderRadius: new BorderRadius.circular(20.0))),
                        onChanged: (text) {
                          setState(() {
                            namaLengkap = text;
                          });
                        }),
                    new Padding(
                      padding: new EdgeInsets.only(top: 20.0),
                    ),
                    new TextField(
                        maxLines: 3,
                        decoration: new InputDecoration(
                            hintText: "Keluhan",
                            labelText: "Keluhan",
                            border: new OutlineInputBorder(
                                borderRadius: new BorderRadius.circular(20.0))),
                        onChanged: (text) {
                          setState(() {
                            keluhan = text;
                          });
                        }),
                    new Padding(
                      padding: new EdgeInsets.only(top: 20.0),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(9.0),
                      child: Container(
                        padding: EdgeInsets.only(left: 16, right: 16),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.blue, width: 1),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: new DropdownButton(
                            hint: Text("Pilih Usia"),
                            icon: Icon(Icons.arrow_drop_down),
                            iconSize: 36,
                            value: _selectedUsia,
                            isExpanded: true,
                            underline: SizedBox(),
                            style: TextStyle(color: Colors.black, fontSize: 16),
                            items: _listUsia.map((location) {
                              return DropdownMenuItem(
                                child: new Text(location),
                                value: location,
                              );
                            }).toList(),
                            onChanged: (newValue) {
                              setState(() {
                                _selectedUsia = newValue;
                                valueUsia =
                                    listBobotUsia[_listUsia.indexOf(newValue)];
                              });
                            }),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(9.0),
                      child: Container(
                        padding: EdgeInsets.only(left: 16, right: 16),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.blue, width: 1),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: new DropdownButton(
                            hint: Text("Pilih Berat Badan"),
                            icon: Icon(Icons.arrow_drop_down),
                            iconSize: 36,
                            value: _selectedBeratBadan,
                            isExpanded: true,
                            underline: SizedBox(),
                            style: TextStyle(color: Colors.black, fontSize: 20),
                            items: _listBeratBadan.map((location) {
                              return DropdownMenuItem(
                                child: new Text(location),
                                value: location,
                              );
                            }).toList(),
                            onChanged: (newValue) {
                              setState(() {
                                _selectedBeratBadan = newValue;
                                valueBeratBadan = listBobotBeratBadan[
                                    _listBeratBadan.indexOf(newValue)];
                              });
                            }),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(9.0),
                      child: Container(
                        padding: EdgeInsets.only(left: 16, right: 16),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.blue, width: 1),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: new DropdownButton(
                            hint: Text("Pilih Gangguan Kesehatan"),
                            icon: Icon(Icons.arrow_drop_down),
                            iconSize: 36,
                            value: _selectedGangguanKesehatan,
                            isExpanded: true,
                            underline: SizedBox(),
                            style: TextStyle(color: Colors.black, fontSize: 20),
                            items: _listGangguanKesehatan.map((location) {
                              return DropdownMenuItem(
                                child: new Text(location),
                                value: location,
                              );
                            }).toList(),
                            onChanged: (newValue) {
                              setState(() {
                                _selectedGangguanKesehatan = newValue;
                                valueGangguanKesehatan =
                                    listBobotGangguanKesehatan[
                                        _listGangguanKesehatan
                                            .indexOf(newValue)];
                              });
                            }),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(9.0),
                      child: Container(
                        padding: EdgeInsets.only(left: 16, right: 16),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.blue, width: 1),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: new DropdownButton(
                            hint: Text("Pilih Jumlah Anak"),
                            icon: Icon(Icons.arrow_drop_down),
                            iconSize: 36,
                            underline: SizedBox(),
                            value: _selectedJumlahAnak,
                            isExpanded: true,
                            style: TextStyle(color: Colors.black, fontSize: 20),
                            items: _listJumlahAnak.map((location) {
                              return DropdownMenuItem(
                                child: new Text(location),
                                value: location,
                              );
                            }).toList(),
                            onChanged: (newValue) {
                              setState(() {
                                _selectedJumlahAnak = newValue;
                                valueJumlahAnak = listBobotJumlahAnak[
                                    _listJumlahAnak.indexOf(newValue)];
                              });
                            }),
                      ),
                    ),
                    new Padding(
                      padding: new EdgeInsets.only(top: 10.0),
                    ),
                    RaisedButton(
                      child: Text("Hitung SPK"),
                      // child: Text("Hitung SPK" +
                      //     valueUsia.toString() +
                      //     valueBeratBadan.toString() +
                      //     valueGangguanKesehatan.toString() +
                      //     valueJumlahAnak.toString()),
                      //Isi dengan inputan atau value dari dropdown
                      // onPressed: () => hitungTopsis(2, 3, 4, 5),
                      onPressed: () => hitungTopsis(valueUsia, valueBeratBadan,
                          valueGangguanKesehatan, valueJumlahAnak),
                    ),
                    new Padding(
                      padding: new EdgeInsets.only(top: 10.0),
                    ),
                    Text(
                      'Info Detail Hasil Perhitungan\n' + detailRangking,
                      // alatTertinggi,
                      style: TextStyle(fontSize: 20),
                    ),
                    // Text(
                    //   nilaiTertinggi.toString(),
                    //   style: TextStyle(fontSize: 28),
                    // ),
                  ],
                ),
              ),
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
      List bobot = [30, 20, 30, 20];
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
        // listRangking.add(new Rangking(
        //     nilai: double.parse(nilaiAkhir.toStringAsFixed(2)),
        //     alat: namaAlat[i]));
        // listRangking.[i] = new Rangking(
        //     nilai: double.parse(nilaiAkhir.toStringAsFixed(2)),
        //     alat: namaAlat[i]);
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

      //Rangking
      Rangking itemiud =
          new Rangking(nilai: tabelNilaiAkhir[0], alat: namaAlat[0]);
      Rangking itemkontap =
          new Rangking(nilai: tabelNilaiAkhir[1], alat: namaAlat[1]);
      Rangking itemimplant =
          new Rangking(nilai: tabelNilaiAkhir[2], alat: namaAlat[2]);
      Rangking itemsuntik =
          new Rangking(nilai: tabelNilaiAkhir[3], alat: namaAlat[3]);
      Rangking itempil =
          new Rangking(nilai: tabelNilaiAkhir[4], alat: namaAlat[4]);
      Rangking itemkondom =
          new Rangking(nilai: tabelNilaiAkhir[5], alat: namaAlat[5]);
      List<Rangking> items = [
        itemiud,
        itemkontap,
        itemimplant,
        itemsuntik,
        itempil,
        itemkondom
      ];

      Comparator<Rangking> priceComparator =
          (a, b) => a.nilai.compareTo(b.nilai);
      items.sort(priceComparator);
      print("=======LIST RANGKING=======");
      detailRangking = "";
      int nomor = 1;
      for (int i = items.length - 1; i >= 0; i--) {
        if (detailRangking == "") {
          detailRangking =
              nomor.toString() + '. ' + '${items[i].alat} - ${items[i].nilai}';
        } else {
          detailRangking = detailRangking +
              '\n' +
              nomor.toString() +
              '. ' +
              '${items[i].alat} - ${items[i].nilai}';
        }
        nomor++;
      }
      // items.forEach((Rangking item) {
      //   if (detailRangking == "") {
      //     detailRangking =
      //         nomor.toString() + '. ' + '${item.alat} - ${item.nilai}';
      //   } else {
      //     detailRangking = detailRangking +
      //         '\n' +
      //         nomor.toString() +
      //         '. ' +
      //         '${item.alat} - ${item.nilai}';
      //   }
      //   nomor++;
      //   // print('${item.alat} - ${item.nilai}');
      // });
    });
  }
}
