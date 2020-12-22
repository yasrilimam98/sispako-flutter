class Data {
  final String jenis, name, imagePath, keterangan;

  Data({
    this.jenis,
    this.name,
    this.imagePath,
    this.keterangan,
  });
}

final data = [
  Data(
      jenis: "Hormonal",
      name: "Implant",
      keterangan: "2 Tahun",
      imagePath: "assets/images/IUD.jpg"),
  Data(
      jenis: "Non Hormonal",
      name: "Kondom",
      keterangan: "Bebas",
      imagePath: "assets/images/kondom.jpg"),
  Data(
      jenis: "Hormonal",
      name: "PIL KB",
      keterangan: "3 Bulan",
      imagePath: "assets/images/pilkb.jpg"),
];
