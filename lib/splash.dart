import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFF202020),
        body: Center(
          child: Container(
            width: 130,
            height: 110,
            child: Image.asset('images/logo-rentalpsku.png'),
          ),
        ),
      ),
    );
  }
}