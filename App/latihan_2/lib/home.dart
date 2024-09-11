import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});
  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double tileWidth = 300.0;
  double tileHeight = 300.0;
  double tileContainerHeight = 450.0;
  double tileContainerHeights = 200.0;
  double tileWidths = 150.0;
  double tileHeights = 150.0;
  String _contextText = "Praktikum Pemrograman HP";

  // Untuk penambahan gambar dan judul nya
  List<Map<String, dynamic>> tilesData = [
    {
      "image": "assets/Images/City3.jpg",
      "title": "Seorang wanita melihat pemandangan kota sore hari"
    },
    {
      "image": "assets/Images/City.jpg",
      "title": "Pemandangan kota Lyon pada pagi hari"
    },
    {
      "image": "assets/Images/City1.jpg",
      "title": "Pemandangan kota Chicago pada sore hari"
    },
    {
      "image": "assets/Images/City2.jpg",
      "title": "Pemandangan kota Shanghai pada sore hari"
    },
    {
      "image": "assets/Images/City4.jpg",
      "title": "Pemandangan kota Denmark pada sore hari"
    },
    {
      "image": "assets/Images/City5.jpg",
      "title": "Pemandangan daerah Missisippi pada siang hari"
    },
    {
      "image": "assets/Images/City6.jpg",
      "title": "Pemandangan kota New York pada sore hari"
    },
    {
      "image": "assets/Images/City7.jpg",
      "title": "Pemandangan Perdesaan Jepang pada sore hari"
    }
  ];

  @override
  Widget build(BuildContext context) {
    AppBar appbarContent = AppBar(
      backgroundColor: Colors.grey,
      title: Text("Projek Flutter Pertama ku",
          style: TextStyle(fontWeight: FontWeight.bold)),
      centerTitle: true,
    );

    Container content = Container(
        child: ListView(
      scrollDirection: Axis.vertical,
      children: [
        Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Container(
                height: tileContainerHeight,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2), // Shadow color
                      spreadRadius: 2, // Spread radius
                      blurRadius: 6, // Blur radius
                      offset: Offset(0, 3), // Position of shadow (x, y)
                    ),
                  ],
                ),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: tilesData.length,
                  itemBuilder: (context, i) {
                    return Container(
                      width: tileWidth,
                      margin: EdgeInsets.only(right: 12.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          width: 6.0,
                          color: Color.fromARGB(0, 0, 0, 0),
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      ),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10.0),
                                topRight: Radius.circular(10.0)),
                            child: Image.asset(
                              tilesData[i]['image'],
                              fit: BoxFit.cover,
                              height: tileHeight,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            tilesData[i]['title'],
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Container(
                decoration: BoxDecoration(
                  border:
                      Border.all(width: 3.0, color: Color.fromARGB(0, 0, 0, 0)),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  color: Colors.black12,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // Widget Gambar untuk logo topi wisuda
                          Text(
                            'Pengubah Text Generator',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        _contextText,
                        style: TextStyle(
                          fontSize: 12,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    // Button "Learn More"
                    Padding(
                        padding: EdgeInsets.all(8.0),
                        child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                // Pop up saat ditekan
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      title: Center(
                                          child: Container(
                                              child: Text("Baiklah!"))),
                                      content:
                                          Text("Klik OK untuk mengubah text!."),
                                      actions: <Widget>[
                                        TextButton(
                                          child: Text(
                                            "OK",
                                            style: TextStyle(color: Colors.red),
                                          ),
                                          onPressed: () {
                                            setState(() {
                                              // ekspresi ternary
                                              _contextText = (_contextText ==
                                                      "Aku Berubah lagi"
                                                  ? "Praktikum Pemrograman HP"
                                                  : "Aku Berubah lagi"); // Mengubah teks
                                            });
                                            Navigator.of(context)
                                                .pop(); // Menutup dialog
                                          },
                                        ),
                                      ],
                                    );
                                  },
                                );
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              shadowColor:
                                  Colors.black, // Ubah warna shadow tombol
                              elevation: 8, // Ubah elevasi tombol
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20,
                                  vertical: 10), // Ubah padding tombol
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    10), // Ubah bentuk tombol menjadi lebih bulat
                              ),
                            ),
                            child: Text(
                              'Klik Aku!',
                              style: TextStyle(
                                  fontFamily: 'Times New Roman',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                  color: Colors.blueGrey),
                            ))),
                  ],
                ),
              ),
            ),
          ],
        )
      ],
    ));

    return Scaffold(
      appBar: appbarContent,
      body: content,
      resizeToAvoidBottomInset: false,
    );
  }
}
