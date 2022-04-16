import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
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
        children: <Widget>[
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 30, bottom: 30),
                padding: EdgeInsets.all(12),
                child: Text(
                  "Data Produk",
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
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Stack(
                  children: [
                    Container(
                      width: 150,
                      height: 185,
                      color: Color(0xffc70039),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.only(top: 20, left: 20),
                          child: Text("Nama Barang    : ",
                              style: TextStyle(
                                fontFamily: 'bangers',
                                fontSize: 20,
                                color: Colors.white,
                              )),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 20, top: 20),
                          child: Text("Harga Barang  : ",
                              style: TextStyle(
                                fontFamily: 'bangers',
                                fontSize: 20,
                                color: Colors.white,
                              )),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 20, top: 20),
                          child: Text("Jenis Kayu          : ",
                              style: TextStyle(
                                fontFamily: 'bangers',
                                fontSize: 20,
                                color: Colors.white,
                              )),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 20, top: 20),
                          child: Text("Deskripsi            : ",
                              style: TextStyle(
                                fontFamily: 'bangers',
                                fontSize: 20,
                                color: Colors.white,
                              )),
                        ),
                      ],
                    ),
                  ],
                ),
                Stack(
                  children: [
                    Container(
                      width: 140,
                      height: 185,
                      color: Color(0xffc70039),
                    ),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: (Get.arguments as List<String>)
                            .map(
                              (e) => Container(
                                padding: EdgeInsets.only(top: 20),
                                child: Text(
                                  e,
                                  style: TextStyle(
                                      fontFamily: 'bangers',
                                      fontSize: 20,
                                      color: Colors.white),
                                ),
                              ),
                            )
                            .toList()),
                  ],
                ),
              ]),
              Container(
                margin: EdgeInsets.only(top: 140),
                child: ElevatedButton(
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                    backgroundColor: Color(0xFF0c3c78),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    shadowColor: Colors.blue,
                  ),
                  onPressed: () {
                    Get.back();
                  },
                  child: Text(
                    "b a c k",
                    style: TextStyle(
                      fontFamily: "bangers",
                      fontSize: 22,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
