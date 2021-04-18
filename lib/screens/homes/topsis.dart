import 'package:flutter/material.dart';
import 'dart:math';

import 'package:sispako/screens/homes/home_screen.dart';

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

  // Alert Dialog
  TextEditingController controllerNama = new TextEditingController();

  //Usia
  List<String> _listUsia = [
    'X (Tidak ada)',
    '< 21 Tahun',
    '22 - 27 Tahun',
    '28 - 33 Tahun',
    '34 - 39 Tahun',
    '40 - 45 Tahun',
    '46 - 50 Tahun',
    '60 - 75 Tahun'
  ];
  List<int> listBobotUsia = [0, 4, 5, 4, 3, 2, 1];
  String _selectedUsia = "X (Tidak ada)";
  int valueUsia = 0;

  //Berat Badan
  List<String> _listBeratBadan = ['X (Tidak ada)', '45 sd 65 Kg', '70 Kg'];
  List<int> listBobotBeratBadan = [0, 4, 1];
  String _selectedBeratBadan = "X (Tidak ada)";
  int valueBeratBadan = 0;

  //Gangguan Kesehatan
  List<String> _listGangguanKesehatan = [
    'X (Tidak ada)',
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
    0,
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
  String _selectedGangguanKesehatan = "X (Tidak ada)";
  int valueGangguanKesehatan = 0;

  // //Jumlah Anak
  List<String> _listJumlahAnak = [
    'X (Tidak ada)',
    'Anak 1',
    'Anak 2',
    'Anak 3',
    'Anak 4'
  ];
  List<int> listBobotJumlahAnak = [0, 1, 2, 3, 4];
  String _selectedJumlahAnak = "X (Tidak ada)";
  int valueJumlahAnak = 0;

  String namaLengkap = "";
  String _mens = "";

  void _pilihmens(String value) {
    setState(() {
      _mens = value;
    });
  }

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
                        controller: controllerNama,
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
                    new RadioListTile(
                      value: "Mens",
                      title: new Text("Mens"),
                      onChanged: (String value) {
                        _pilihmens(value);
                      },
                      groupValue: _mens,
                      subtitle: new Text("Pilih ini jika anda Menstruasi"),
                    ),
                    new RadioListTile(
                      value: "Tidak Mens",
                      title: new Text("Tidak Mens"),
                      onChanged: (String value) {
                        _pilihmens(value);
                      },
                      groupValue: _mens,
                      subtitle:
                          new Text("Pilih ini jika anda Tidak Menstruasi"),
                    ),
                    new Padding(
                      padding: new EdgeInsets.only(top: 20.0),
                    ),
                    Text("Usia", style: TextStyle(fontSize: 17)),
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
                    Text("Berat Badan", style: TextStyle(fontSize: 17)),
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
                            style: TextStyle(color: Colors.black, fontSize: 16),
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
                    Text("Gangguan Kesehatan", style: TextStyle(fontSize: 17)),
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
                            style: TextStyle(color: Colors.black, fontSize: 16),
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
                    Text("Jumlah Anak", style: TextStyle(fontSize: 17)),
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
                            style: TextStyle(color: Colors.black, fontSize: 16),
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
                    // ignore: deprecated_member_use
                    RaisedButton(
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 15.0, bottom: 15.0, left: 30.0, right: 30.0),
                        child: Text(
                          "Hitung SPK",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      color: const Color(0xFF2196F3),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0)),
                      elevation: 3,
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
                      padding: new EdgeInsets.only(top: 15.0),
                    ),
                    // ignore: deprecated_member_use
                    RaisedButton(
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 15.0, bottom: 15.0, left: 30.0, right: 30.0),
                        child: Text(
                          "Dashboard",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      color: const Color(0xFF2196F3),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0)),
                      elevation: 3,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return HomePage();
                            },
                          ),
                        );
                      },
                    ),
                    // new Padding(
                    //   padding: new EdgeInsets.only(top: 10.0),
                    // ),
                    // Text(
                    //   'Info Detail Hasil Perhitungan\n' + detailRangking,
                    //   // alatTertinggi,
                    //   style: TextStyle(fontSize: 20),
                    // ),
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
    AlertDialog alertDialog = new AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      ),
      content: new Container(
          height: 515.0,
          width: 400.0,

          // decoration: BoxDecoration(
          //   border: Border.all(color: Colors.blue, width: 1),
          //   borderRadius: BorderRadius.circular(20),
          // ),
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              new Text(
                "\nInfo Detail",
                style: TextStyle(
                    fontFamily: "muli",
                    fontSize: 24.0,
                    fontWeight: FontWeight.w700),
              ),
              new Padding(
                padding: new EdgeInsets.only(top: 10.0),
              ),
              new Text(
                  "Nama Lengkap : ${controllerNama.text}                   "),
              new Text("Menstruasi / Tidak : $_mens     "),
              new Text("Usia : $_selectedUsia                          "),
              new Text("Berat Badan : $_selectedBeratBadan              "),
              new Text(
                  "Penyakit : $_selectedGangguanKesehatan                        "),
              new Text(
                  "Jumlah Anak : $_selectedJumlahAnak                     \n"),
              new Text(
                  "Rekomendasi alat : \n$detailRangking                            "),
              new Padding(
                padding: new EdgeInsets.all(10.0),
              ),
              // ignore: deprecated_member_use
              new RaisedButton(
                child: new Text(
                  "OK",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                color: const Color(0xFF2196F3),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0)),
                elevation: 3,
                onPressed: () => Navigator.pop(context),
              )
            ],
          )),
    );
    showDialog(builder: (context) => alertDialog, context: context);
    setState(() {
      List inputan = [usia, beratBadan, gangguanKesehatan, jumlahAnak];
      //Tabel Ektraksi Kriteria dan Alternatif
      List tabelAlternatif = [
        [3, 4, 4, 2],
        [3, 1, 2, 3],
        [3, 1, 3, 2],
        [5, 1, 4, 4],
        [4, 4, 3, 1],
        [3, 1, 3, 3]
      ];
      List bobot = [30, 20, 30, 20];
      var jmlBaris = tabelAlternatif.length;
      var jmlKolom = tabelAlternatif[0].length;
      // ignore: deprecated_member_use
      List<double> tabelAkarMatriks = new List(jmlKolom);
      // ignore: deprecated_member_use
      List<double> tabelSolusiPositif = new List(jmlKolom);
      // ignore: deprecated_member_use
      List<double> tabelSolusiNegatif = new List(jmlKolom);
      // ignore: deprecated_member_use
      List<double> tabelAkarSolusiPositif = new List(jmlBaris);
      // ignore: deprecated_member_use
      List<double> tabelAkarSolusiNegatif = new List(jmlBaris);
      // ignore: deprecated_member_use
      List<double> tabelNilaiAkhir = new List(jmlBaris);
      var tabelTernormalisasi =
          // ignore: deprecated_member_use
          List.generate(jmlBaris, (i) => List(jmlKolom), growable: false);
      var tabelKeputusanTerbobot =
          // ignore: deprecated_member_use
          List.generate(jmlBaris, (i) => List(jmlKolom), growable: false);
      var tabelJarakPositif =
          // ignore: deprecated_member_use
          List.generate(jmlBaris, (i) => List(jmlKolom), growable: false);
      var tabelJarakNegatif =
          // ignore: deprecated_member_use
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
        // ignore: deprecated_member_use
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
