import 'package:flutter/material.dart';
import 'package:mobile_billing_ps_app/main.dart';
import 'package:introduction_screen/introduction_screen.dart';


class Intro extends StatelessWidget {
  const Intro({super.key});
  
  @override
  Widget build(BuildContext context) {
    
    return IntroductionScreen(
      next: Text("Selanjutnya"),
      done: Text("Selesai"),
      onDone: () {
        Navigator.of(context).pop();
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return MyHomePage(title: 'Rental PSku',);
            },
          ),
        );
      },
      pages: [
        PageViewModel(
          title: 'Selamat Datang di Rental PSku',
          body: 'Adakah selatus',
          decoration: PageDecoration(titleTextStyle: TextStyle(fontSize: 35),bodyTextStyle: TextStyle(fontSize: 20,fontFamily: 'Inder')),
          image: Image(image: AssetImage('images/logo-ps.png'),),
        ),
        PageViewModel(
          title: 'Mainkan Berbagai Game Menarik di Tempat Kami',
          body: 'Wih keren banget bang',
          decoration: PageDecoration(titleTextStyle: TextStyle(fontSize: 35),bodyTextStyle: TextStyle(fontSize: 20,fontFamily: 'Inder')),
          image: Image(image: AssetImage('images/intro_screen.jpg'),),
        ),
        
      ],
    );
  }
}