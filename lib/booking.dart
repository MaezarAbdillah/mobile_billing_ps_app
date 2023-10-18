import 'package:flutter/material.dart';
import 'package:mobile_billing_ps_app/main.dart';
import 'package:mobile_billing_ps_app/success.dart';

// ignore: must_be_immutable
class BookingPage extends StatefulWidget {
  String room;

  BookingPage({required this.room});

  @override
  _BookingPageState createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
  final TextEditingController _controller = TextEditingController();
  String nama = '';
  String radioValue = '';
  String jamValue = '';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFF202020),
        body: Column(
          children: [
            Container(
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  //mengambil image dari folder assets
                  image: AssetImage("images/kamar-rental.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Row(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: IconButton(
                      icon: Icon(Icons.arrow_back),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MyHomePage(
                                      title: 'Rental PSku',
                                    )));
                      },
                      color: Colors.white, // Customize the color
                      iconSize: 30.0, // Customize the size
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: Text(
                        '${widget.room}',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Jomhuria',
                          fontSize: 30,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: "Masukan nama anda",
                          labelText: "Nama",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                        ),
                        controller: _controller,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                        'Pilih Hari',
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.all(5),
                          child: Column(
                            children: [
                              Radio(
                                value: 'Senin',
                                groupValue: radioValue,
                                onChanged: (String? value) {
                                  setState(() {
                                    radioValue = value!;
                                  });
                                },
                              ),
                              const Text('Senin'),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(5),
                          child: Column(
                            children: [
                              Radio(
                                value: 'Selasa',
                                groupValue: radioValue,
                                onChanged: (String? value) {
                                  setState(() {
                                    radioValue = value!;
                                  });
                                },
                              ),
                              const Text('Selasa'),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(5),
                          child: Column(
                            children: [
                              Radio(
                                value: 'Rabu',
                                groupValue: radioValue,
                                onChanged: (String? value) {
                                  setState(() {
                                    radioValue = value!;
                                  });
                                },
                              ),
                              const Text('Rabu'),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(5),
                          child: Column(
                            children: [
                              Radio(
                                value: 'Kamis',
                                groupValue: radioValue,
                                onChanged: (String? value) {
                                  setState(() {
                                    radioValue = value!;
                                  });
                                },
                              ),
                              const Text('Kamis'),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(5),
                          child: Column(
                            children: [
                              Radio(
                                value: 'Jumat',
                                groupValue: radioValue,
                                onChanged: (String? value) {
                                  setState(() {
                                    radioValue = value!;
                                  });
                                },
                              ),
                              const Text('Jumat'),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(5),
                          child: Column(
                            children: [
                              Radio(
                                value: 'Sabtu',
                                groupValue: radioValue,
                                onChanged: (String? value) {
                                  setState(() {
                                    radioValue = value!;
                                  });
                                },
                              ),
                              const Text('Sabtu'),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(5),
                          child: Column(
                            children: [
                              Radio(
                                value: 'Minggu',
                                groupValue: radioValue,
                                onChanged: (String? value) {
                                  setState(() {
                                    radioValue = value!;
                                  });
                                },
                              ),
                              const Text('Minggu'),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                        'Main berapa jam bro',
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Radio(
                          value: '1 Jam',
                          groupValue: jamValue,
                          onChanged: (String? value) {
                            setState(() {
                              jamValue = value!;
                            });
                          },
                        ),
                        const Text('1 Jam'),
                        Radio(
                          value: '2 Jam',
                          groupValue: jamValue,
                          onChanged: (String? value) {
                            setState(() {
                              jamValue = value!;
                            });
                          },
                        ),
                        const Text('2 Jam'),
                        Radio(
                          value: '3 Jam',
                          groupValue: jamValue,
                          onChanged: (String? value) {
                            setState(() {
                              jamValue = value!;
                            });
                          },
                        ),
                        const Text('3 Jam'),
                      ],
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        child: ElevatedButton(
                          onPressed: (() {
                            setState(() {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SuccessPage(
                                          nama: _controller.text,
                                          jam: jamValue,
                                          hari: radioValue)));
                            });
                          }),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFF813995),
                          ),
                          child: Text(
                            'BOOK NOW',
                            style: TextStyle(
                              fontFamily: 'Inder',
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
