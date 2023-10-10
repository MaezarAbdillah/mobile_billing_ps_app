import 'package:flutter/material.dart';

class SuccessPage extends StatefulWidget {
  String nama,jam,hari;

  SuccessPage({required this.nama,required this.jam,required this.hari});

  @override
  State<SuccessPage> createState() => _SuccessPageState();
}

class _SuccessPageState extends State<SuccessPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text(
            'Nama : ${widget.nama}'
          ),
          Text(
            'Booking Berapa Jam : ${widget.jam}',
          ),
          Text(
            'Nama : ${widget.hari}',
          ),
        ],
      ),
    );
  }
}