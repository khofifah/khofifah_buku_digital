import 'package:flutter/material.dart';
import 'package:khofifah_buku_digital/model/Mapel.dart';
import 'package:pie_chart/pie_chart.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
  double width = MediaQuery.of(context).size.width;
  double height = MediaQuery.of(context).size.height;
  Map<String, double> dataMap = new Map();
  dataMap.putIfAbsent("Matematika", () => 80);
  dataMap.putIfAbsent("Biologi", () => 80);
  dataMap.putIfAbsent("Fisika", () => 70);
  dataMap.putIfAbsent("Kimia", () => 60);

    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text("Buku Digitalku 4.0"),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () {},
              child: Icon(
                Icons.search,
                size: 26.0,
              ),
            )
          ),
        ],
        elevation: 0.0,
        backgroundColor: Color(0xFF363563)
      ),
      body: SingleChildScrollView(
        child: Container(
          width: width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[              
              Container(
                height: height * 0.4,
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      child: Container(
                        width: width,
                        height: height * 0.34,
                        decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage("assets/top_home.png"), fit: BoxFit.fitWidth),
                        ),
                      ),
                    ),
                    Positioned(
                      child: Container(
                        padding: EdgeInsets.fromLTRB(15, 50, 0, 0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Hai!",                          
                              style: TextStyle(fontSize: 20, color: Colors.white)
                            ),
                            Text(
                              "Khofifah",                          
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white)
                            ),
                            SizedBox(height: 20),
                            Container(
                              width: 100.0,
                              height: 100.0,
                              decoration: new BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: new DecorationImage(
                                      fit: BoxFit.cover,
                                      image: new NetworkImage(
                                          "https://st4.depositphotos.com/4173075/28583/i/1600/depositphotos_285833324-stock-photo-trendy-poster-koala-watercolor-cartoon.jpg")
                                  )
                              )
                            ),
                          ],
                        )
                      ),
                    ),
                    Positioned(
                      top: 230,
                      left: 120,
                      child: Container(
                        width: 100.0,
                        height: 100.0,
                        decoration: new BoxDecoration(
                          color: Color(0xFF363563),
                          shape: BoxShape.circle,
                        ),
                        child: Column(
                          children: <Widget>[
                            SizedBox(height: 15),
                            Text(
                              "Kelas",                          
                              style: TextStyle(fontSize: 15, color: Colors.white)
                            ),
                            Text(
                              "XI",                          
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 45, color: Colors.white)
                            ),
                          ],
                        )
                      )
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                 children: <Widget>[
                  Mapel(
                    name: 'Matematika', 
                    guru1: 'https://peneliti.id/wp-content/uploads/2017/09/flamingos-1280x720.jpg', 
                    guru2: 'https://cnet4.cbsistatic.com/img/gXDnUIsd4InM8cCy1oorcpOyCDo=/940x0/2018/05/04/fabac30b-f319-4d48-bb9b-e2528f6be506/crocodile.jpg',
                    backColor: 0xFFee4345
                  ),
                  SizedBox(height: 10),
                  Mapel(
                    name: 'Biologi', 
                    guru1: 'https://cottagelife.com/wp-content/uploads/2019/05/Cottage-Life-Spicebush-Swallowtail-Caterpillar.jpg', 
                    guru2: 'https://i.pinimg.com/originals/0a/87/56/0a8756ae2a8582dffa7a74ebd040e1a8.jpg',
                    backColor: 0xFF34bfb6
                  ),
                  SizedBox(height: 10),
                  Mapel(
                    name: 'Fisika', 
                    guru1: 'https://static01.nyt.com/images/2020/05/12/science/23TB-PIGEONS/23TB-PIGEONS-mediumSquareAt3X.jpg', 
                    guru2: 'https://i.pinimg.com/originals/22/a6/42/22a64261a267132662daa6cb44622f75.jpg',
                    backColor: 0xFF57a0d4
                  ),
                  SizedBox(height: 10),
                  Mapel(
                    name: 'Kimia', 
                    guru1: 'https://i.ytimg.com/vi/AdSpm574rUU/maxresdefault.jpg', 
                    guru2: 'https://upload.wikimedia.org/wikipedia/commons/f/f9/Loxodonta_africana_-_old_bull_%28Ngorongoro%2C_2009%29.jpg',
                    backColor: 0xFFffc203
                  ),
                  SizedBox(height: 10),
                  Mapel(
                    name: 'Lainnya', 
                    guru1: '', 
                    guru2: '',
                    backColor: 0xFF6f6f6f
                  ),
                 ], 
                ),
              ),
              SizedBox(height: 15),
              Container(
                padding: EdgeInsets.all(15),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        "Materi Terbaru",                          
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)
                      ),
                    ),
                    Expanded(
                      child: Container(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "Lihat Semua",                          
                          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.blue)
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(5),
                        child: Icon(
                          Icons.ondemand_video,
                          size: 150,
                          color: Color(0xFF363563),
                        ),
                      )
                    ),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(5),
                        child: Icon(
                          Icons.ondemand_video,
                          size: 150,
                          color: Color(0xFF363563),
                        ),
                      )
                    ),
                  ],
                )
              ),
              SizedBox(height: 15),
              Container(
                padding: EdgeInsets.all(15),
                child: Row(
                  children: <Widget>[
                    Flexible(
                      flex: 2,
                      child: Container(
                        child: Row(
                          children: <Widget>[
                            Text(
                              "Pengumuman Tugas",
                              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
                            ),
                            Text(
                              "(99+)",
                              style: TextStyle(fontSize: 13, color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "Lihat Semua",                          
                          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.blue)
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration  : new BoxDecoration(
                        borderRadius:  BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey[350])
                      ),  
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Tugas Sejarah",                          
                                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.grey)
                                ),
                                Text(
                                  "Dikumpulkan di folder google drive, link di grup wa",                          
                                  style: TextStyle(fontSize: 12, color: Colors.grey)
                                ),
                                SizedBox(height: 10),
                                Text(
                                  "Batas pengumpulan tugas - 12.00 WIB",                          
                                  style: TextStyle(fontSize: 10, color: Colors.grey)
                                ),
                                SizedBox(height: 10),
                                Text(
                                  "Arini, S.Pd",                          
                                  style: TextStyle(fontSize: 10, color: Colors.grey)
                                ),
                              ],
                            )
                          ),
                          Icon(
                            Icons.close,
                            size: 20,
                            color: Colors.black,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 15),
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration  : new BoxDecoration(
                        borderRadius:  BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey[350])
                      ),  
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Tugas Sejarah",                          
                                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.grey)
                                ),
                                Text(
                                  "Dikumpulkan di folder google drive, link di grup wa",                          
                                  style: TextStyle(fontSize: 12, color: Colors.grey)
                                ),
                                SizedBox(height: 10),
                                Text(
                                  "Batas pengumpulan tugas - 12.00 WIB",                          
                                  style: TextStyle(fontSize: 10, color: Colors.grey)
                                ),
                                SizedBox(height: 10),
                                Text(
                                  "Arini, S.Pd",                          
                                  style: TextStyle(fontSize: 10, color: Colors.grey)
                                ),
                              ],
                            )
                          ),
                          Icon(
                            Icons.close,
                            size: 20,
                            color: Colors.black,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Container(
                padding: EdgeInsets.all(15),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        "Belajar Terakhir",                          
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)
                      ),
                    ),
                    Expanded(
                      child: Container(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "Lihat Semua",                          
                          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.blue)
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration  : new BoxDecoration(
                        borderRadius:  BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey[350])
                      ),  
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.ondemand_video,
                            size: 60,
                            color: Colors.red[400],
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Matematika",                          
                                  style: TextStyle(fontSize: 15)
                                ),
                                SizedBox(height: 5),
                                Text(
                                  "Bab 1 - Algoritma Dasar",                          
                                  style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)
                                ),
                                SizedBox(height: 5),
                                Text(
                                  "Terakhir dibuka pada, Senin 8 Juni 2020",                            
                                  style: TextStyle(fontSize: 10, color: Colors.grey)
                                ),
                              ],
                            )
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 15),
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration  : new BoxDecoration(
                        borderRadius:  BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey[350])
                      ),  
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.mic,
                            size: 60,
                            color: Colors.red[400],
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Matematika",                          
                                  style: TextStyle(fontSize: 15)
                                ),
                                SizedBox(height: 5),
                                Text(
                                  "Bab 1 - Algoritma Dasar",                          
                                  style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)
                                ),
                                SizedBox(height: 5),
                                Text(
                                  "Terakhir dibuka pada, Senin 8 Juni 2020",                          
                                  style: TextStyle(fontSize: 10, color: Colors.grey)
                                ),
                              ],
                            )
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 15),
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration  : new BoxDecoration(
                        borderRadius:  BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey[350])
                      ),  
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.edit,
                            size: 60,
                            color: Colors.red[400],
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Matematika",                          
                                  style: TextStyle(fontSize: 15)
                                ),
                                SizedBox(height: 5),
                                Text(
                                  "Bab 1 - Algoritma Dasar",                          
                                  style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)
                                ),
                                SizedBox(height: 5),
                                Text(
                                  "Terakhir dibuka pada, Senin 8 Juni 2020",                             
                                  style: TextStyle(fontSize: 10, color: Colors.grey)
                                ),
                              ],
                            )
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 15),
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration  : new BoxDecoration(
                        borderRadius:  BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey[350])
                      ),  
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.collections_bookmark,
                            size: 60,
                            color: Colors.red[400],
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Matematika",                          
                                  style: TextStyle(fontSize: 15)
                                ),
                                SizedBox(height: 5),
                                Text(
                                  "Bab 1 - Algoritma Dasar",                          
                                  style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)
                                ),
                                SizedBox(height: 5),
                                Text(
                                  "Terakhir dibuka pada, Senin 8 Juni 2020",                           
                                  style: TextStyle(fontSize: 10, color: Colors.grey)
                                ),
                              ],
                            )
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 15),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        alignment: Alignment.center,
                        child: Text(
                          "Hasil Belajarmu",                          
                          style: TextStyle(fontSize: 20),
                        ),
                      )
                    ),
                    Expanded(
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: Color(0xFF5465ab),
                              width: 6,
                            ),
                          )
                        ),
                        child: Text(
                          "Hasil Pencapaianmu",                          
                          style: TextStyle(fontSize: 20),
                        ),
                      )
                    )
                  ],
                )
              ),
              SizedBox(height: 15),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: Color(0xFF5465ab),
                              width: 6,
                            ),
                          )
                        ),
                        child: Column(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.all(15),
                              decoration: new BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xFF6f6f6f),
                              ),
                              alignment: Alignment.center,
                              child: Icon(
                                Icons.looks_one,
                                size: 30,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              "Semua",                          
                              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      )
                    ),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(5),
                        child: Column(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.all(15),
                              decoration: new BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xFFee4345),
                              ),
                              alignment: Alignment.center,
                              child: Icon(
                                Icons.looks_one,
                                size: 30,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              "Matematika",                          
                              style: TextStyle(fontSize: 10),
                            ),
                          ],
                        ),
                      )
                    ),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(5),
                        child: Column(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.all(15),
                              decoration: new BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xFF57a0d4),
                              ),
                              alignment: Alignment.center,
                              child: Icon(
                                Icons.looks_one,
                                size: 30,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              "Fisika",                          
                              style: TextStyle(fontSize: 15),
                            ),
                          ],
                        ),
                      )
                    ),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(5),
                        child: Column(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.all(15),
                              decoration: new BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xFFffc203),
                              ),
                              alignment: Alignment.center,
                              child: Icon(
                                Icons.looks_one,
                                size: 30,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              "Kimia",                          
                              style: TextStyle(fontSize: 15),
                            ),
                          ],
                        ),
                      )
                    ),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(5),
                        child: Column(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.all(15),
                              decoration: new BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xFF34bfb6),
                              ),
                              alignment: Alignment.center,
                              child: Icon(
                                Icons.looks_one,
                                size: 30,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              "Biologi",                          
                              style: TextStyle(fontSize: 15),
                            ),
                          ],
                        ),
                      )
                    ),
                  ],
                )
              ),
              SizedBox(height: 25),  
              Container(
                alignment: Alignment.center,
                child: Text(
                  "Semua Statistik",                          
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),   
              SizedBox(height: 10), 
              Container(
                alignment: Alignment.center,
                child: Text(
                  "Semua Mata Pelajaran",                          
                  style: TextStyle(fontSize: 15),
                ),
              ),   
              SizedBox(height: 15),
              PieChart(dataMap: dataMap),
              SizedBox(height: 15),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(5),
                        child: Column(
                          children: <Widget>[
                            Text(
                              "Total Latihan",                          
                              style: TextStyle(fontSize: 12),
                            ),
                            SizedBox(height: 5),
                            Text(
                              "10 / 50",                          
                              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      )
                    ),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(5),
                        child: Column(
                          children: <Widget>[
                            Text(
                              "Total Pertanyaan",                          
                              style: TextStyle(fontSize: 12),
                            ),
                            SizedBox(height: 5),
                            Text(
                              "100 / 350",                          
                              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      )
                    ),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(5),
                        child: Column(
                          children: <Widget>[
                            Text(
                              "Kecepatan Menjawab",                          
                              style: TextStyle(fontSize: 10),
                            ),
                            SizedBox(height: 5),
                            Text(
                              "10 menit / soal",                          
                              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      )
                    ),
                  ],
                )
              ),
              SizedBox(height: 15),
            ],
          ),
        ),
      ),
    );
  }
}
