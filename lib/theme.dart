import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeModeData extends ChangeNotifier {
  ThemeMode _themeMode = ThemeMode.system;

  ThemeMode get themeMode => _themeMode;

  bool get isDarkModeActive => _themeMode == ThemeMode.dark;

  void changeTheme(ThemeMode themeMode) {
    _themeMode = themeMode;
    notifyListeners();
  }
}

class temague extends ChangeNotifier {
  
  List<Color> warna = [
    Colors.blue,
    Colors.red,
    Colors.yellow,
    Color(0XFF813995),
  ];
  List<Color?> skepold = [
    Colors.orange[200],
    Colors.green[800],
    Colors.indigo,
    Color(0xFF202020),
  ];
  List<Color?> teks = [
    Colors.black,
    Colors.orange[300],
    Colors.grey[800],
    Colors.white,
  ];
  
  int index =0;
  void changeIndex(int i){
    index = i;
    notifyListeners();
  }
  ThemeData display(){
    List <ThemeData> tema = [
    ThemeData(
      brightness: Brightness.light,
      colorScheme: ColorScheme.fromSeed(seedColor: warna[index],brightness: Brightness.light,),
      textTheme: GoogleFonts.jomhuriaTextTheme(
        TextTheme(
          labelLarge: TextStyle(fontSize: 25),
          bodyLarge: TextStyle(color: teks[index]),
          bodyMedium: TextStyle(color: teks[index]),
          bodySmall: TextStyle(color: teks[index]),
        ),
      ),
      scaffoldBackgroundColor: skepold[index],
      bottomNavigationBarTheme:BottomNavigationBarThemeData(backgroundColor: warna[index]),
    ),
    ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: warna[index],brightness: Brightness.dark,),
      textTheme: GoogleFonts.jomhuriaTextTheme(
        TextTheme(
          labelLarge: TextStyle(fontSize: 25),
          displaySmall: TextStyle(color: teks[index]),
          displayLarge: TextStyle(color: teks[index]),
          displayMedium: TextStyle(color: teks[index]),
          
        ),
      ),
      brightness: Brightness.dark,
      scaffoldBackgroundColor: skepold[index],
      bottomNavigationBarTheme:BottomNavigationBarThemeData(backgroundColor: warna[index]),
    ),
    ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: warna[index],brightness: Brightness.dark,),
      textTheme: GoogleFonts.jomhuriaTextTheme(
        TextTheme(
          labelLarge: TextStyle(fontSize: 25),
          displaySmall: TextStyle(color: teks[index]),
          displayLarge: TextStyle(color: teks[index]),
          displayMedium: TextStyle(color: teks[index]),
        ),
      ),
      
      scaffoldBackgroundColor: skepold[index],
      bottomNavigationBarTheme:BottomNavigationBarThemeData(backgroundColor: warna[index]),
    ),
    ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: warna[index],brightness: Brightness.dark,),
      textTheme: GoogleFonts.jomhuriaTextTheme(
        TextTheme(
          labelLarge: TextStyle(fontSize: 25),
          displaySmall: TextStyle(color: teks[index]),
          displayLarge: TextStyle(color: teks[index]),
          displayMedium: TextStyle(color: teks[index]),
        ),
      ),
      brightness: Brightness.dark,
      scaffoldBackgroundColor: skepold[index],
      bottomNavigationBarTheme:BottomNavigationBarThemeData(backgroundColor: warna[index]),
    ),
  ];
    return tema[index];
  }
  
}
