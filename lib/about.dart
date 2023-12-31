
import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('images/profil_about.jpg'),
                radius: 50,
              ),
              Text(
                'Maezar Abdillah',
                style: TextStyle(
                    fontFamily: 'Inder',
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                  ),
              ),
              Text(
                '2109106029',
                style: TextStyle(
                  fontFamily: 'Inder',
                  fontSize: 25,
                ),
              ),
              Text(
                'UNIVERSITAS MULAWARMAN',
                style: TextStyle(
                  fontFamily: 'Inder',
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
