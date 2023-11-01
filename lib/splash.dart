import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var lebar = MediaQuery.of(context).size.width;
    var tinggi = MediaQuery.of(context).size.height;
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        scaffoldBackgroundColor: Colors.orange[200],
        textTheme: GoogleFonts.jomhuriaTextTheme(
          TextTheme(
            displayMedium: TextStyle(color: Colors.white),
          ),
        ),
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Color(0xFF202020),
        textTheme: GoogleFonts.jomhuriaTextTheme(
          TextTheme(
            displayMedium: TextStyle(color: Colors.white),
          ),
        ),
      ),
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Container(
              height: tinggi,
              width: lebar,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('images/logo-ps.png'),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Rental PSku',
                    style: TextStyle(
                      fontSize: 40,
                    ),
                  )
                ],
              )),
        ),
      ),
    );
  }
}
