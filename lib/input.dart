import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:postest3_1915016110_maulana_yusuf/output.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

enum Kayu { Ulin, Arau, Meranti }

class _HomePageState extends State<HomePage> {
  final namaBarang = TextEditingController();
  final hargaBarang = TextEditingController();
  final deskripsiBarang = TextEditingController();

  Kayu? jenis_kayu = Kayu.Ulin;

  String nama = "";
  String harga = "";
  String deskripsi = "";
  String kayu = "";
  @override
  void dispose() {
    namaBarang.dispose();
    hargaBarang.dispose();
    super.dispose();
  }

  String getKayu(Kayu? value) {
    if (value == Kayu.Arau) {
      return "Kayu Arau";
    } else if (value == Kayu.Meranti) {
      return "Kayu Meranti";
    } else if (value == Kayu.Ulin) {
      return "Kayu Ulin";
    }
    return "Tidak Ada Jenis Kayu";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF0c3c78),
        title: Text("Maulana Yusuf"),
        centerTitle: true,
        shadowColor: Color(0xff2FA4FF),
      ),
      backgroundColor: Color(0xFFFFBF00),
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 30, bottom: 30),
                padding: EdgeInsets.all(12),
                child: Text(
                  "Tambah Data Produk",
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'lobster',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: <Color>[
                      Colors.green,
                      Colors.blue,
                    ],
                  ),
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.green,
                      spreadRadius: 3,
                      blurRadius: 5,
                    ),
                  ],
                ),
              ),
              Container(
                margin:
                    EdgeInsets.only(top: 10, right: 25, left: 25, bottom: 10),
                child: TextField(
                  textAlign: TextAlign.center,
                  controller: namaBarang,
                  decoration: InputDecoration(
                    fillColor: Color(0xffc70039),
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    labelText: 'Nama Barang',
                    labelStyle: TextStyle(
                      fontFamily: 'bebas',
                      fontSize: 20,
                      color: Colors.white,
                    ),
                    hintText: "Masukkan Nama Barang",
                    hintStyle: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontFamily: "lobster",
                    ),
                  ),
                ),
              ),
              Container(
                margin:
                    EdgeInsets.only(top: 10, right: 25, left: 25, bottom: 10),
                child: TextField(
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.number,
                  controller: hargaBarang,
                  decoration: InputDecoration(
                    fillColor: Color(0xffc70039),
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    labelText: 'Harga Barang',
                    labelStyle: TextStyle(
                      fontFamily: 'bebas',
                      fontSize: 20,
                      color: Colors.white,
                    ),
                    hintText: "Masukkan Harga Barang",
                    hintStyle: TextStyle(
                      fontFamily: "lobster",
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              ListTile(
                title: Text(
                  "Kayu Ulin",
                  style: TextStyle(
                    fontFamily: 'bebas',
                    fontSize: 20,
                  ),
                ),
                leading: Radio(
                  fillColor: MaterialStateColor.resolveWith(
                      (states) => Color(0xffc70039)),
                  groupValue: jenis_kayu,
                  value: Kayu.Ulin,
                  onChanged: (Kayu? value) {
                    setState(
                      () {
                        jenis_kayu = value!;
                      },
                    );
                  },
                ),
              ),
              ListTile(
                title: Text(
                  "Kayu Arau",
                  style: TextStyle(
                    fontFamily: 'bebas',
                    fontSize: 20,
                  ),
                ),
                leading: Radio(
                  fillColor: MaterialStateColor.resolveWith(
                      (states) => Color(0xffc70039)),
                  groupValue: jenis_kayu,
                  value: Kayu.Arau,
                  onChanged: (Kayu? value) {
                    setState(
                      () {
                        jenis_kayu = value!;
                      },
                    );
                  },
                ),
              ),
              ListTile(
                title: Text(
                  "Kayu Meranti",
                  style: TextStyle(
                    fontFamily: 'bebas',
                    fontSize: 20,
                  ),
                ),
                leading: Radio(
                  fillColor: MaterialStateColor.resolveWith(
                    (states) => Color(0xffc70039),
                  ),
                  groupValue: jenis_kayu,
                  value: Kayu.Meranti,
                  onChanged: (Kayu? value) {
                    setState(
                      () {
                        jenis_kayu = value!;
                      },
                    );
                  },
                ),
              ),
              Container(
                margin:
                    EdgeInsets.only(top: 10, right: 25, left: 25, bottom: 10),
                child: TextField(
                  textAlign: TextAlign.center,
                  controller: deskripsiBarang,
                  maxLines: 2,
                  maxLength: 14,
                  decoration: InputDecoration(
                    fillColor: Color(0xffc70039),
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    labelText: 'Deskripsi Barang',
                    labelStyle: TextStyle(
                      fontFamily: 'bebas',
                      fontSize: 20,
                      color: Colors.white,
                    ),
                    hintText: "Masukkan Deskripsi Barang",
                    hintStyle: TextStyle(
                      fontFamily: "lobster",
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              ElevatedButton(
                style: TextButton.styleFrom(
                  padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                  backgroundColor: Color(0xFF0c3c78),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  shadowColor: Colors.blue,
                ),
                onPressed: () {
                  nama = namaBarang.text;
                  harga = hargaBarang.text;
                  deskripsi = deskripsiBarang.text;
                  kayu = getKayu(jenis_kayu);
                  Get.toNamed('/second',
                      arguments: [nama, harga, kayu, deskripsi]);
                },
                child: Text(
                  "s u b m i t",
                  style: TextStyle(
                    fontFamily: "bangers",
                    fontSize: 22,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
