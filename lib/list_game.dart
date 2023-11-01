import 'package:flutter/material.dart';

class ListGame extends StatefulWidget {
  const ListGame({super.key});

  @override
  State<ListGame> createState() => _ListGameState();
}

class _ListGameState extends State<ListGame> {

  //List yang akan digunakan untuk gridview dalam menampilkan list list game yang ada
  List<Widget> gameimg = [
    Image(image: AssetImage('images/gow.jpeg')),
    Image(image: AssetImage('images/evil-west.jpeg')),
    Image(image: AssetImage('images/isin.jpeg')),
    Image(image: AssetImage('images/gow.jpeg')),
    Image(image: AssetImage('images/evil-west.jpeg')),
    Image(image: AssetImage('images/isin.jpeg')),
    Image(image: AssetImage('images/gow.jpeg')),
    Image(image: AssetImage('images/evil-west.jpeg')),
    Image(image: AssetImage('images/isin.jpeg')),
    Image(image: AssetImage('images/gow.jpeg')),
    Image(image: AssetImage('images/evil-west.jpeg')),
    Image(image: AssetImage('images/isin.jpeg')),
    Image(image: AssetImage('images/gow.jpeg')),
    Image(image: AssetImage('images/evil-west.jpeg')),
    Image(image: AssetImage('images/isin.jpeg')),
  ];

  @override
  Widget build(BuildContext context) {
    var lebar = MediaQuery.of(context).size.width;
    var tinggi = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: ListView(
          children: [
            Container(
              width: lebar,
              height: tinggi,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text(
                      "List Game Rental PSku",
                      style: TextStyle(
                          fontFamily: 'Jomhuria',
                          fontSize: 35),
                    ),
                  ),
                  Expanded(
                    child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3 ,crossAxisSpacing: 20, mainAxisSpacing: 20),
                    itemCount: gameimg.length,
                    itemBuilder: (_,i){
                      return gameimg[i];
                    },),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
