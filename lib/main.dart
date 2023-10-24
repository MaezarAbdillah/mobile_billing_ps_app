<<<<<<< HEAD
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:mobile_billing_ps_app/booking.dart';
import 'package:mobile_billing_ps_app/list_game.dart';
import 'package:mobile_billing_ps_app/splash.dart';
import 'package:mobile_billing_ps_app/about.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //code menampilkan splashscreen yang berdurasi 2 detik
    return FutureBuilder(
        future: Future.delayed(Duration(seconds: 2)),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return SplashScreen();
          } else {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Rental PSku',
              home: const MyHomePage(title: 'Rental PSku'),
            );
          }
        });
  }
}

String nama = 'Maezar';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //membuat variabel index untuk pengindexan page
  int _index = 0;
  //membuat List sebuah page
  List<Widget> page = [
    Home(),
    ListGame(),
    About(),
    
  ];
  void _onItemTap(int index) {
    setState(() {
      _index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //code bottom navbar
      body: Container(
        color: Color(0xFF202020),
        child: page[_index],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xFF813995),
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.white,
        currentIndex: _index,
        onTap: _onItemTap,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.gamepad_outlined),
            label: "List Game",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info_outline_rounded),
            label: "About",
          ),
        ],
      ),
    );
  }
}

//class home untuk page home
class Home extends StatefulWidget {
  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController _room = new TextEditingController();
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    var lebar = MediaQuery.of(context).size.width;
    var tinggi = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xFF202020),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              //bagian Header
              Container(
                margin: EdgeInsets.fromLTRB(10, 10, 0, 10),
                child: Text(
                  'Selamat Datang, $nama !',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontFamily: 'Jomhuria',
                      fontSize: 30,
                      color: Colors.white),
                ),
              ),
              //bagian promo
              Container(
                margin: EdgeInsets.only(left: 30),
                child: Text(
                  'Ada yang baru nih dari Kami',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontFamily: 'Jomhuria',
                      fontSize: 25,
                      color: Colors.white),
                ),
              ),
              Container(
                width: lebar,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            //Container 1
                            Container(
                              margin: EdgeInsets.all(10),
                              width: 180,
                              height: 90,
                              child: Material(
                                child: Ink.image(
                                  image: AssetImage("images/gambar-ps4.jpg"),
                                  fit: BoxFit.cover,
                                  child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        selected = !selected;
                                      });
                                    },
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.all(10),
                              child: Text(
                                'Join and become our member',
                                style: TextStyle(
                                    fontFamily: 'Inder',
                                    fontSize: 10,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white),
                              ),
                            )
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            //Container 2
                            Container(
                              margin: EdgeInsets.all(10),
                              width: 180,
                              height: 90,
                              child: Material(
                                child: Ink.image(
                                  image: AssetImage("images/gambar-ps4-hitam.jpg"),
                                  fit: BoxFit.cover,
                                  child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        selected = !selected;
                                      });
                                    },
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.all(10),
                              child: Text(
                                'Ruangan VVIP',
                                style: TextStyle(
                                    fontFamily: 'Inder',
                                    fontSize: 10,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          //Container 3
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.all(10),
                              width: 180,
                              height: 90,
                              child: Material(
                                child: Ink.image(
                                  image: AssetImage("images/gambar-ps4-hitam.jpg"),
                                  fit: BoxFit.cover,
                                  child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        selected = !selected;
                                      });
                                    },
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.all(10),
                              child: Text(
                                'Promo Spesial 10.10',
                                style: TextStyle(
                                    fontFamily: 'Inder',
                                    fontSize: 10,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white),
                              ),
                            )
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            //Container 4
                            Container(
                              margin: EdgeInsets.all(10),
                              width: 180,
                              height: 90,
                              child: Material(
                                child: Ink.image(
                                  image: AssetImage("images/gambar-ps4.jpg"),
                                  fit: BoxFit.cover,
                                  child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        selected = !selected;
                                      });
                                    },
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.all(10),
                              child: Text(
                                'Paket Hemat 3 Jam Hanya 25k',
                                style: TextStyle(
                                    fontFamily: 'Inder',
                                    fontSize: 10,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              // bagian booking
              Container(
                margin: EdgeInsets.only(left: 30),
                child: Text(
                  'Booking sekarang',
                  style: TextStyle(
                    fontFamily: 'Jomhuria',
                    fontSize: 25,
                    color: Colors.white,
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 20, 0, 5),
                            child: ElevatedButton(
                              onPressed: (() {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => BookingPage(
                                            room: _room.text = 'Room VVIP 1')));
                              }),
                              style: ElevatedButton.styleFrom(
                                  elevation: 0,
                                  padding: EdgeInsets.zero,
                                  minimumSize: Size(60, 110),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  )),
                              child: Container(
                                width: 60,
                                height: 110,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      //mengambil image dari folder assets
                                      image:
                                          AssetImage("images/kamar-rental.jpg"),
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                            child: Text(
                              'Room VVIP 1',
                              style: TextStyle(
                                fontFamily: 'Inder',
                                fontSize: 10,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(20, 20, 0, 5),
                            child: ElevatedButton(
                              onPressed: (() {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => BookingPage(
                                            room: _room.text = 'Room VVIP 2')));
                              }),
                              style: ElevatedButton.styleFrom(
                                  elevation: 0,
                                  padding: EdgeInsets.zero,
                                  minimumSize: Size(60, 110),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  )),
                              child: Container(
                                width: 60,
                                height: 110,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      //mengambil image dari folder assets
                                      image:
                                          AssetImage("images/kamar-rental.jpg"),
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(20, 0, 0, 10),
                            child: Text(
                              'Room VVIP 2',
                              style: TextStyle(
                                fontFamily: 'Inder',
                                fontSize: 10,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(20, 20, 0, 5),
                            child: ElevatedButton(
                              onPressed: (() {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => BookingPage(
                                            room: _room.text = 'Room VVIP 3')));
                              }),
                              style: ElevatedButton.styleFrom(
                                  elevation: 0,
                                  padding: EdgeInsets.zero,
                                  minimumSize: Size(60, 110),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  )),
                              child: Container(
                                width: 60,
                                height: 110,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      //mengambil image dari folder assets
                                      image:
                                          AssetImage("images/kamar-rental.jpg"),
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(20, 0, 0, 10),
                            child: Text(
                              'Room VVIP 3',
                              style: TextStyle(
                                fontFamily: 'Inder',
                                fontSize: 10,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(20, 20, 0, 5),
                            child: ElevatedButton(
                              onPressed: (() {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => BookingPage(
                                            room: _room.text = 'Reguler 1')));
                              }),
                              style: ElevatedButton.styleFrom(
                                  elevation: 0,
                                  padding: EdgeInsets.zero,
                                  minimumSize: Size(60, 110),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  )),
                              child: Container(
                                width: 60,
                                height: 110,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      //mengambil image dari folder assets
                                      image:
                                          AssetImage("images/kamar-rental.jpg"),
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(20, 0, 0, 10),
                            child: Text(
                              'Reguler 1',
                              style: TextStyle(
                                fontFamily: 'Inder',
                                fontSize: 10,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 20, 0, 5),
                            child: ElevatedButton(
                              onPressed: (() {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => BookingPage(
                                            room: _room.text = 'Reguler 2')));
                              }),
                              style: ElevatedButton.styleFrom(
                                  elevation: 0,
                                  padding: EdgeInsets.zero,
                                  minimumSize: Size(60, 110),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  )),
                              child: Container(
                                width: 60,
                                height: 110,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      //mengambil image dari folder assets
                                      image:
                                          AssetImage("images/kamar-rental.jpg"),
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                            child: Text(
                              'Reguler 2',
                              style: TextStyle(
                                fontFamily: 'Inder',
                                fontSize: 10,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(20, 20, 0, 5),
                            child: ElevatedButton(
                              onPressed: (() {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => BookingPage(
                                            room: _room.text = 'Reguler 3')));
                              }),
                              style: ElevatedButton.styleFrom(
                                  elevation: 0,
                                  padding: EdgeInsets.zero,
                                  minimumSize: Size(60, 110),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  )),
                              child: Container(
                                width: 60,
                                height: 110,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      //mengambil image dari folder assets
                                      image:
                                          AssetImage("images/kamar-rental.jpg"),
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(20, 0, 0, 10),
                            child: Text(
                              'Reguler 3',
                              style: TextStyle(
                                fontFamily: 'Inder',
                                fontSize: 10,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(20, 20, 0, 5),
                            child: ElevatedButton(
                              onPressed: (() {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => BookingPage(
                                            room: _room.text = 'Reguler 4')));
                              }),
                              style: ElevatedButton.styleFrom(
                                  elevation: 0,
                                  padding: EdgeInsets.zero,
                                  minimumSize: Size(60, 110),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  )),
                              child: Container(
                                width: 60,
                                height: 110,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      //mengambil image dari folder assets
                                      image:
                                          AssetImage("images/kamar-rental.jpg"),
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(20, 0, 0, 10),
                            child: Text(
                              'Reguler 4',
                              style: TextStyle(
                                fontFamily: 'Inder',
                                fontSize: 10,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(20, 20, 0, 5),
                            child: ElevatedButton(
                              onPressed: (() {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => BookingPage(
                                            room: _room.text = 'Reguler 5')));
                              }),
                              style: ElevatedButton.styleFrom(
                                  elevation: 0,
                                  padding: EdgeInsets.zero,
                                  minimumSize: Size(60, 110),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  )),
                              child: Container(
                                width: 60,
                                height: 110,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      //mengambil image dari folder assets
                                      image:
                                          AssetImage("images/kamar-rental.jpg"),
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(20, 0, 0, 10),
                            child: Text(
                              'Reguler 5',
                              style: TextStyle(
                                fontFamily: 'Inder',
                                fontSize: 10,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
=======
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:mobile_billing_ps_app/booking.dart';
import 'package:mobile_billing_ps_app/splash.dart';
import 'package:mobile_billing_ps_app/about.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //code menampilkan splashscreen yang berdurasi 2 detik
    return FutureBuilder(
        future: Future.delayed(Duration(seconds: 2)),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return SplashScreen();
          } else {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Rental PSku',
              home: const MyHomePage(title: 'Rental PSku'),
            );
          }
        });
  }
}

String nama = 'Maezar';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  //membuat variabel index untuk pengindexan page
  int _index = 0;
  //membuat List sebuah page
  List <Widget> page =[
  Home(),
  About(),
];
  void _onItemTap(int index) {
    setState(() {
      _index = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //code bottom navbar
      body: Container(
        color: Color(0xFF202020),
        child: page[_index],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xFF813995),
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.white,
        currentIndex: _index,
        onTap:_onItemTap,
        items:  [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: "Home",
            
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info_outline_rounded),
            label: "About",
          ),
        ],
      ),
    );
  }
}


//class home untuk page home
class Home extends StatelessWidget {
  Home({super.key});
  TextEditingController _room = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF202020),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              //bagian Header
              Container(
                margin: EdgeInsets.fromLTRB(10, 10, 0, 10),
                child: Text(
                  'Selamat Datang, $nama !',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontFamily: 'Jomhuria',
                      fontSize: 30,
                      color: Colors.white),
                ),
              ),
              //bagian promo
              Container(
                margin: EdgeInsets.only(left:30),
                child: Text(
                  'Ada yang baru nih dari Kami',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontFamily: 'Jomhuria',
                      fontSize: 25,
                      color: Colors.white),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //Container 1
                          Container(
                            margin: EdgeInsets.all(10),
                            width: 180,
                            height: 90,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  //mengambil image dari folder assets
                                  image: AssetImage("images/gambar-ps4.jpg"),
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(10),
                            child: Text(
                              'Join and become our member',
                              style: TextStyle(
                                  fontFamily: 'Inder',
                                  fontSize: 10,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white),
                            ),
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //Container 2
                          Container(
                            margin: EdgeInsets.all(10),
                            width: 180,
                            height: 90,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  //mengambil image dari folder assets
                                  image:
                                      AssetImage("images/gambar-ps4-hitam.jpg"),
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(10),
                            child: Text(
                              'Ruangan VVIP',
                              style: TextStyle(
                                  fontFamily: 'Inder',
                                  fontSize: 10,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        //Container 3
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.all(10),
                            width: 180,
                            height: 90,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  //mengambil image dari folder assets
                                  image:
                                      AssetImage("images/gambar-ps4-hitam.jpg"),
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(10),
                            child: Text(
                              'Promo Spesial 10.10',
                              style: TextStyle(
                                  fontFamily: 'Inder',
                                  fontSize: 10,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white),
                            ),
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //Container 4
                          Container(
                            margin: EdgeInsets.all(10),
                            width: 180,
                            height: 90,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  //mengambil image dari folder assets
                                  image: AssetImage("images/gambar-ps4.jpg"),
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(10),
                            child: Text(
                              'Paket Hemat 3 Jam Hanya 25k',
                              style: TextStyle(
                                  fontFamily: 'Inder',
                                  fontSize: 10,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),

              // bagian booking
              Container(
                margin: EdgeInsets.only(left:30),
                child: Text(
                  'Booking sekarang',
                  style: TextStyle(
                    fontFamily: 'Jomhuria',
                    fontSize: 25,
                    color: Colors.white,
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 20, 0, 5),
                            child: ElevatedButton(
                              onPressed: (() {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => BookingPage(
                                            room: _room.text = 'Room VVIP 1')));
                              }),
                              style: ElevatedButton.styleFrom(
                                  elevation: 0,
                                  padding: EdgeInsets.zero,
                                  minimumSize: Size(60, 110),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  )),
                              child: Container(
                                width: 60,
                                height: 110,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      //mengambil image dari folder assets
                                      image:
                                          AssetImage("images/kamar-rental.jpg"),
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                            child: Text(
                              'Room VVIP 1',
                              style: TextStyle(
                                fontFamily: 'Inder',
                                fontSize: 10,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(20, 20, 0, 5),
                            child: ElevatedButton(
                              onPressed: (() {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => BookingPage(
                                            room: _room.text = 'Room VVIP 2')));
                              }),
                              style: ElevatedButton.styleFrom(
                                  elevation: 0,
                                  padding: EdgeInsets.zero,
                                  minimumSize: Size(60, 110),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  )),
                              child: Container(
                                width: 60,
                                height: 110,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      //mengambil image dari folder assets
                                      image:
                                          AssetImage("images/kamar-rental.jpg"),
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(20, 0, 0, 10),
                            child: Text(
                              'Room VVIP 2',
                              style: TextStyle(
                                fontFamily: 'Inder',
                                fontSize: 10,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(20, 20, 0, 5),
                            child: ElevatedButton(
                              onPressed: (() {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => BookingPage(
                                            room: _room.text = 'Room VVIP 3')));
                              }),
                              style: ElevatedButton.styleFrom(
                                  elevation: 0,
                                  padding: EdgeInsets.zero,
                                  minimumSize: Size(60, 110),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  )),
                              child: Container(
                                width: 60,
                                height: 110,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      //mengambil image dari folder assets
                                      image:
                                          AssetImage("images/kamar-rental.jpg"),
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(20, 0, 0, 10),
                            child: Text(
                              'Room VVIP 3',
                              style: TextStyle(
                                fontFamily: 'Inder',
                                fontSize: 10,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(20, 20, 0, 5),
                            child: ElevatedButton(
                              onPressed: (() {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => BookingPage(
                                            room: _room.text = 'Reguler 1')));
                              }),
                              style: ElevatedButton.styleFrom(
                                  elevation: 0,
                                  padding: EdgeInsets.zero,
                                  minimumSize: Size(60, 110),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  )),
                              child: Container(
                                width: 60,
                                height: 110,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      //mengambil image dari folder assets
                                      image:
                                          AssetImage("images/kamar-rental.jpg"),
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(20, 0, 0, 10),
                            child: Text(
                              'Reguler 1',
                              style: TextStyle(
                                fontFamily: 'Inder',
                                fontSize: 10,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 20, 0, 5),
                            child: ElevatedButton(
                              onPressed: (() {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => BookingPage(
                                            room: _room.text = 'Reguler 2')));
                              }),
                              style: ElevatedButton.styleFrom(
                                  elevation: 0,
                                  padding: EdgeInsets.zero,
                                  minimumSize: Size(60, 110),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  )),
                              child: Container(
                                width: 60,
                                height: 110,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      //mengambil image dari folder assets
                                      image:
                                          AssetImage("images/kamar-rental.jpg"),
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                            child: Text(
                              'Reguler 2',
                              style: TextStyle(
                                fontFamily: 'Inder',
                                fontSize: 10,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(20, 20, 0, 5),
                            child: ElevatedButton(
                              onPressed: (() {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => BookingPage(
                                            room: _room.text = 'Reguler 3')));
                              }),
                              style: ElevatedButton.styleFrom(
                                  elevation: 0,
                                  padding: EdgeInsets.zero,
                                  minimumSize: Size(60, 110),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  )),
                              child: Container(
                                width: 60,
                                height: 110,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      //mengambil image dari folder assets
                                      image:
                                          AssetImage("images/kamar-rental.jpg"),
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(20, 0, 0, 10),
                            child: Text(
                              'Reguler 3',
                              style: TextStyle(
                                fontFamily: 'Inder',
                                fontSize: 10,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(20, 20, 0, 5),
                            child: ElevatedButton(
                              onPressed: (() {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => BookingPage(
                                            room: _room.text = 'Reguler 4')));
                              }),
                              style: ElevatedButton.styleFrom(
                                  elevation: 0,
                                  padding: EdgeInsets.zero,
                                  minimumSize: Size(60, 110),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  )),
                              child: Container(
                                width: 60,
                                height: 110,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      //mengambil image dari folder assets
                                      image:
                                          AssetImage("images/kamar-rental.jpg"),
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(20, 0, 0, 10),
                            child: Text(
                              'Reguler 4',
                              style: TextStyle(
                                fontFamily: 'Inder',
                                fontSize: 10,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(20, 20, 0, 5),
                            child: ElevatedButton(
                              onPressed: (() {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => BookingPage(
                                            room: _room.text = 'Reguler 5')));
                              }),
                              style: ElevatedButton.styleFrom(
                                  elevation: 0,
                                  padding: EdgeInsets.zero,
                                  minimumSize: Size(60, 110),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  )),
                              child: Container(
                                width: 60,
                                height: 110,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      //mengambil image dari folder assets
                                      image:
                                          AssetImage("images/kamar-rental.jpg"),
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(20, 0, 0, 10),
                            child: Text(
                              'Reguler 5',
                              style: TextStyle(
                                fontFamily: 'Inder',
                                fontSize: 10,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
>>>>>>> 3f08d1f21d1914020223f6b3424560adb74dbaa6
