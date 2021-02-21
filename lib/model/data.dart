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
      keterangan: "",
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
      jenis: "Non Hormonal",
      name: "IUD",
      keterangan: "",
      imagePath: "assets/images/IUD.jpg",
      mekanisme: [
        "- Menghambat kemampuan sperma untuk masuk kedalam tuba falopi",
        "- Mempengaruhi fertilisasi sebelum ovum mencapai cavum uteri",
        "- Mencegah sperma dan ovum bertemu karena jalannya terhalangi dan memungkinkan untuk mencegah implantasi telur dalam uterus",
      ],
      kontraindikasi: [
        "- Hamil atau diduga hamil",
        "- Ibu yang mempunyai infeksi hamil",
        "  Ibu dengan peradangan leher Rahim (serviks)",
        "- Ukuran Rahim <5cm",
        "- Ibu yang dicurigai mempunyai kanker Rahim",
        "- Ibu dengan pendarahan yang tidak normal dan tidak diketahui penyebabnya.",
        "- Ibu yang waktu haid perdarahannya sangat banyak",
        "- Ibu yang pernah hamil diluar kandungan (kehamilan ektopik)",
        "- Kelainan bawaan Rahim dan jaringan perut",
        "- Alergi tembaga",
      ],
      efeksamping:
          '''Timbul nyeri atau mules, bercak-bercak perdarahan, keputihan.''',
      artikelkb:
          '''AKDR adalah alat kontrasepsi yang dimasukkan kedalam rahim yang bentuknya bermacam-macam, terdiri dari plastik (polyethyline), ada yang dililit tembaga (Cu), dililit tembaga bercampur perak (Ag) dan ada pula yang batangnya hanya berisi hormon progesterone (Rahayu and Prijatni, 2016). Lilitan logam menyebabkan reaksi anti fertilitas dengan jangka waktu penggunaan antara dua hingga sepuluh tahun dengan metode kerjanya mencegah masuknya spermatozoa ke dalam saluran tuba  '''),
  Data(
      jenis: "Non Hormonal",
      name: "Kondom",
      keterangan: "2 Tahun",
      imagePath: "assets/images/kondom.jpg",
      mekanisme: [
        " - ",
        " - ",
        " - ",
      ],
      kontraindikasi: [
        "- Alergi terhadap bahan karet latex ",
      ],
      efeksamping:
          '''Kondom bocor atau robek, Menyebabkan wanita mengeluh keputihan yang banyak dan amat berbau''',
      artikelkb:
          '''Adalah alat kontrasepsi terbuat dari karet yang tipis, biasanya digunakan oleh para
lelaki, digunakan untuk menghalangi masuknya sperma kedalam Rahim. Metode kondom dapat digunakan setiap akan melakukan hubungan seksual '''),
  Data(
      jenis: "Hormonal",
      name: "PIL KB",
      keterangan: "2 Tahun",
      imagePath: "assets/images/pilkb.jpg",
      mekanisme: [
        "- Cara kerja pil KB menekan ovulasi untuk mencegah lepasnya sel telur wanita dari indung telur",
        "- Mengentalkan lendir mulut rahim sehingga sperma sukar untuk masuk ke dalam rahim, dan menipiskan lapisan endometrium",
        "- Pil Progestin dapat dikonsumsi saat menyusui",
        "- Efektifitas pil sangat tinggi, angka kegagalannya berkisar 1-8% untuk pil kombinasi, dan 3-10% untuk pil progestin.",
      ],
      kontraindikasi: [
        "- Hamil atau diduga hamil",
        "- Ibu menyusui (pil kombinasi)",
        "- Sering lupa jadwal minum ",
        "- Mengalami perdarahan pervaginam yang tidak diketahui penyebabnya",
        "- Hipertensi ",
        "- Mempunyai kanker payudara",
        "- Mempunyai miom ",
        "- Memiliki riwayat stroke",
        "- Menggunakan obat untuk TBC / obat epilepsy",
      ],
      efeksamping: '''Gangguan siklus haid, pusing, mual dan muntah''',
      artikelkb:
          '''Merupakan kontrasepsi untuk wanita yang berbentuk pil atau tablet yang berisi kombinasi hormon estrogen dan progesteron (Pil Kombinasi) dan pil yang hanya terdiri dari hormon progesteron saja (Pil Progestin). Metode ini dapat mencegah kehamilan satu  bulan dengan mengonsumsi satu pil setiap hari '''),
  Data(
      jenis: "Hormonal",
      name: "Suntik KB",
      keterangan: "2 Tahun",
      imagePath: "assets/images/suntikkb.jpg",
      mekanisme: [
        "- Cara kerjanya sama dengan pil KB.",
        "- Menekan ovulasi untuk mencegah lepasnya sel telur wanita dari indung telur",
        "- Mengentalkan lendir mulut rahim sehingga sperma sukar untuk masuk ke dalam rahim, dan menipiskan lapisan endometrium. ",
      ],
      kontraindikasi: [
        "- Hamil atau diduga hamil",
        "- Wanita dengan perdarahan yang tidak diketahui penyebabnya.",
        "- Mengidap tumor",
        "- Mempunyai penyakit jantung, hipertensi, kencing manis, paru-paru.",
        "- Menderita atau riwayat kanker payudara",
      ],
      efeksamping:
          '''Dapat terjadinya gangguna haid, Depresi, Keputihan, Jerawat, Perubahan berat badan dan Pemakaian jangka panjang bisa terjadi penurunan libido, dan densitas tulang. ''',
      artikelkb:
          '''Alat kontrasepsi suntik/injeksi terdiri dari dua jenis yaitu, suntik KB 1 bulan (cyclofem) dan suntik KB 3 bulan (DMPA). Metode suntik KB 1 bulan dapat mencegah kehamilan 1 bulan dan suntik 3 bulan dapat mencegah kehamilan selama 3 bulan. Dilakukan sesuai jadwal yang telah ditentukan oleh bidan/dokter.'''),
  Data(
      jenis: "Non Hormonal",
      name: "MOW",
      keterangan: "2 Tahun",
      imagePath: "assets/images/kontap.jpg",
      mekanisme: [
        "- Dengan mengoklusi tuba falopii (mengikat, memotong atau memasang cincin) sehingga sperma tidak dapat bertemu dengan ovum.",
      ],
      kontraindikasi: [
        "- Peradangan dalam rongga panggul",
        "- Peradangan pada vagina ",
        "- Obesitas berlebihan",
        "- Memiliki bekas laparotomy ",
      ],
      efeksamping: '''Tidak ada efek samping''',
      artikelkb:
          '''Merupakan tindakan penutupan terhadap kedua saluran telur kanan dan kiri pada wanita yang menyebabkan sel sperma tidak dapat bertemu dengan sel telur. MOW sering disebut sebagai sterilisasi wanita'''),
  Data(
      jenis: "Non Hormonal",
      name: "MOP",
      keterangan: "2 Tahun",
      imagePath: "assets/images/mop.jpg",
      mekanisme: [
        "-",
      ],
      kontraindikasi: [
        "- Memiliki infeksi kulit lokal misalnya scabies",
        "- Mempunyai infeksi saluran kelamin",
        "- Kelainan skrotum atau sekitarnya",
        "- Mempunyai hernia",
        "- Mempunyai luka parut operasi hernia",
        "- Mempunyai penyakit sistemik (diabetes mellitus, penyakit jantung koroner).",
      ],
      efeksamping:
          '''	Pada pengguna MOP tidak memiliki efek yang bersifat merugikan, sperma yang diproduksi akan kembali diserap tubuh tanpa menyebab gangguan metabolisme, Rasa nyeri atau ketidaknyamanan akibat pembedahan yang biasanya berlangsung beberapi hari. Infeksi akibat perawat bekas operasi yang tidak baik atau disebabkan karena dari lingkungan luar bukan dari MOP. MOP tidak berpengaruh terhadap kemampuan laki-laki untuk melakukan hubungan seksual ''',
      artikelkb:
          '''Menghentikan kapasitas reproduksi pria dengan cara mengoklusi vas deferens sehingga alur transportasi sperma terhambat dan proses fertilisasi (penyatuan dengan ovum) tidak terjadi.'''),
];
