import 'package:flutter/material.dart';

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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
  double width = MediaQuery.of(context).size.width;
  double height = MediaQuery.of(context).size.height;

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
          height: height,
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
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), 
    );
  }
}
