import 'package:flutter/material.dart';
import 'package:mobile_billing_ps_app/theme.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var lebar = MediaQuery.of(context).size.width;
    var tinggi = MediaQuery.of(context).size.height;
    return MaterialApp(
      theme: Provider.of<temague>(context).display(),
      themeMode: Provider.of<ThemeModeData>(context).themeMode,
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
