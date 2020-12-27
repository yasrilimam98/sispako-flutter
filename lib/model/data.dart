class Data {
  final String jenis, name, imagePath, keterangan;
  final String artikelkb, efeksamping;
  final List mekanisme;
  final List kontraindikasi;

  Data({
    this.jenis,
    this.name,
    this.imagePath,
    this.keterangan,
    this.artikelkb,
    this.efeksamping,
    this.mekanisme,
    this.kontraindikasi,
  });
}

final data = [
  Data(
      jenis: "Hormonal",
      name: "Implant",
      keterangan: "2 Tahun",
      imagePath: "assets/images/implan.jpg",
      mekanisme: [
        "- Mencegah Kehamilan",
        "- Mencegah Ovulasi",
        "- Menghambat pergerakan Spermatoza",
        "- Menghambat perkembangan endoterium",
      ],
      kontraindikasi: [
        "- Hamil atau diduga hamil",
        "- Pendarahan tractus yang tidak diketahui",
        "  penyebabnya",
        "- Tromboflebitis aktif",
        "- Penyakit hati akut",
        "- Tumor atau kanker payudara",
      ],
      efeksamping:
          '''Perubahan pola haid yang terjadi kira-kira 60% akseptor dalam tahun pertama insersiperasaan kering pada vagina karna hormone progesterone (hipoestrogen)''',
      artikelkb:
          '''Implan adalah metode kontrasepsi hormonal yang efektif, tidak permanen dan dapat mencegah terjadinya kehamilan antara tiga hingga lima tahun. Implan memiliki 2 jenis, yaitu Non-Biodegradable Implan  dan Biodegradable Implan.'''),
  Data(
      jenis: "Hormonal",
      name: "AKDR",
      keterangan: "2 Tahun",
      imagePath: "assets/images/IUD.jpg",
      mekanisme: [
        "- Mencegah Kehamilan",
        "- Mencegah Ovulasi",
        "- Menghambat pergerakan Spermatoza",
        "- Menghambat perkembangan endoterium",
      ],
      kontraindikasi: [
        "- Hamil atau diduga hamil",
        "- Pendarahan tractus yang tidak diketahui",
        "  penyebabnya",
        "- Tromboflebitis aktif",
        "- Penyakit hati akut",
        "- Tumor atau kanker payudara",
      ],
      efeksamping:
          '''Perubahan pola haid yang terjadi kira-kira 60% akseptor dalam tahun pertama insersiperasaan kering pada vagina karna hormone progesterone (hipoestrogen)''',
      artikelkb:
          '''AKDR yang saat ini digunakan di Indonesia adalah CuT-380A. Penggunaan kontrasepsi ini sangat efektif, reversibel dan berjangka panjang akan tetapi perdarahan haid lebih banyak dari biasanya. Cara kerja dari AKDR ini dengan menghambat kemampuan sperma untuk masuk ke tuba fallopi, memengaruhi fertilisasi sebelum ovum mencapai kavum uteri, mencegah sperma dan ovum bertemu, memungkinkan pencegahan implantasi ovum dalam uterus serta mempertebal mukus serviks. AKDR sangat efektif digunakan dengan angka kegagalan 0,6 – 0,8 kehamilan per 100 perempuan dalam 1 tahun pertama. '''),
  Data(
      jenis: "Hormonal",
      name: "Kondom",
      keterangan: "2 Tahun",
      imagePath: "assets/images/kondom.jpg",
      mekanisme: [
        "- Mencegah Kehamilan",
        "- Mencegah Ovulasi",
        "- Menghambat pergerakan Spermatoza",
        "- Menghambat perkembangan endoterium",
      ],
      kontraindikasi: [
        "- Hamil atau diduga hamil",
        "- Pendarahan tractus yang tidak diketahui",
        "  penyebabnya",
        "- Tromboflebitis aktif",
        "- Penyakit hati akut",
        "- Tumor atau kanker payudara",
      ],
      efeksamping:
          '''Perubahan pola haid yang terjadi kira-kira 60% akseptor dalam tahun pertama insersiperasaan kering pada vagina karna hormone progesterone (hipoestrogen)''',
      artikelkb:
          '''AKDR yang saat ini digunakan di Indonesia adalah CuT-380A. Penggunaan kontrasepsi ini sangat efektif, reversibel dan berjangka panjang akan tetapi perdarahan haid lebih banyak dari biasanya. Cara kerja dari AKDR ini dengan menghambat kemampuan sperma untuk masuk ke tuba fallopi, memengaruhi fertilisasi sebelum ovum mencapai kavum uteri, mencegah sperma dan ovum bertemu, memungkinkan pencegahan implantasi ovum dalam uterus serta mempertebal mukus serviks. AKDR sangat efektif digunakan dengan angka kegagalan 0,6 – 0,8 kehamilan per 100 perempuan dalam 1 tahun pertama. '''),
  Data(
      jenis: "Hormonal",
      name: "PIL KB",
      keterangan: "2 Tahun",
      imagePath: "assets/images/pilkb.jpg",
      mekanisme: [
        "- Mencegah Kehamilan",
        "- Mencegah Ovulasi",
        "- Menghambat pergerakan Spermatoza",
        "- Menghambat perkembangan endoterium",
      ],
      kontraindikasi: [
        "- Hamil atau diduga hamil",
        "- Pendarahan tractus yang tidak diketahui",
        "  penyebabnya",
        "- Tromboflebitis aktif",
        "- Penyakit hati akut",
        "- Tumor atau kanker payudara",
      ],
      efeksamping:
          '''Perubahan pola haid yang terjadi kira-kira 60% akseptor dalam tahun pertama insersiperasaan kering pada vagina karna hormone progesterone (hipoestrogen)''',
      artikelkb:
          '''AKDR yang saat ini digunakan di Indonesia adalah CuT-380A. Penggunaan kontrasepsi ini sangat efektif, reversibel dan berjangka panjang akan tetapi perdarahan haid lebih banyak dari biasanya. Cara kerja dari AKDR ini dengan menghambat kemampuan sperma untuk masuk ke tuba fallopi, memengaruhi fertilisasi sebelum ovum mencapai kavum uteri, mencegah sperma dan ovum bertemu, memungkinkan pencegahan implantasi ovum dalam uterus serta mempertebal mukus serviks. AKDR sangat efektif digunakan dengan angka kegagalan 0,6 – 0,8 kehamilan per 100 perempuan dalam 1 tahun pertama. '''),
  Data(
      jenis: "Hormonal",
      name: "Suntik KB",
      keterangan: "2 Tahun",
      imagePath: "assets/images/suntikkb.jpg",
      mekanisme: [
        "- Mencegah Kehamilan",
        "- Mencegah Ovulasi",
        "- Menghambat pergerakan Spermatoza",
        "- Menghambat perkembangan endoterium",
      ],
      kontraindikasi: [
        "- Hamil atau diduga hamil",
        "- Pendarahan tractus yang tidak diketahui",
        "  penyebabnya",
        "- Tromboflebitis aktif",
        "- Penyakit hati akut",
        "- Tumor atau kanker payudara",
      ],
      efeksamping:
          '''Perubahan pola haid yang terjadi kira-kira 60% akseptor dalam tahun pertama insersiperasaan kering pada vagina karna hormone progesterone (hipoestrogen)''',
      artikelkb:
          '''AKDR yang saat ini digunakan di Indonesia adalah CuT-380A. Penggunaan kontrasepsi ini sangat efektif, reversibel dan berjangka panjang akan tetapi perdarahan haid lebih banyak dari biasanya. Cara kerja dari AKDR ini dengan menghambat kemampuan sperma untuk masuk ke tuba fallopi, memengaruhi fertilisasi sebelum ovum mencapai kavum uteri, mencegah sperma dan ovum bertemu, memungkinkan pencegahan implantasi ovum dalam uterus serta mempertebal mukus serviks. AKDR sangat efektif digunakan dengan angka kegagalan 0,6 – 0,8 kehamilan per 100 perempuan dalam 1 tahun pertama. '''),
  Data(
      jenis: "Hormonal",
      name: "Kontap",
      keterangan: "2 Tahun",
      imagePath: "assets/images/kontap.jpg",
      mekanisme: [
        "- Mencegah Kehamilan",
        "- Mencegah Ovulasi",
        "- Menghambat pergerakan Spermatoza",
        "- Menghambat perkembangan endoterium",
      ],
      kontraindikasi: [
        "- Hamil atau diduga hamil",
        "- Pendarahan tractus yang tidak diketahui",
        "  penyebabnya",
        "- Tromboflebitis aktif",
        "- Penyakit hati akut",
        "- Tumor atau kanker payudara",
      ],
      efeksamping:
          '''Perubahan pola haid yang terjadi kira-kira 60% akseptor dalam tahun pertama insersiperasaan kering pada vagina karna hormone progesterone (hipoestrogen)''',
      artikelkb:
          '''AKDR yang saat ini digunakan di Indonesia adalah CuT-380A. Penggunaan kontrasepsi ini sangat efektif, reversibel dan berjangka panjang akan tetapi perdarahan haid lebih banyak dari biasanya. Cara kerja dari AKDR ini dengan menghambat kemampuan sperma untuk masuk ke tuba fallopi, memengaruhi fertilisasi sebelum ovum mencapai kavum uteri, mencegah sperma dan ovum bertemu, memungkinkan pencegahan implantasi ovum dalam uterus serta mempertebal mukus serviks. AKDR sangat efektif digunakan dengan angka kegagalan 0,6 – 0,8 kehamilan per 100 perempuan dalam 1 tahun pertama. '''),
];
