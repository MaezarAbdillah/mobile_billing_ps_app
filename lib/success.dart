
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SuccessPage extends StatefulWidget {
  String nama,jam,hari,room;

  SuccessPage({required this.nama,required this.jam,required this.hari,required this.room});

  @override
  State<SuccessPage> createState() => _SuccessPageState();
}

class _SuccessPageState extends State<SuccessPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Room : ${widget.room}'
            ),
            Text(
              'Nama : ${widget.nama}'
            ),
            Text(
              'Booking Berapa Jam : ${widget.jam}',
            ),
            Text(
              'Main Hari Apa : ${widget.hari}',
            ),
          ],
        ),
      ),
    );
  }
}
