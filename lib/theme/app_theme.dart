

import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.deepPurple;

  static final ThemeData light = ThemeData.light().copyWith(
      //color primary
      primaryColor: Colors.lightBlue,
      
      textButtonTheme: TextButtonThemeData(style: TextButton.styleFrom(primary: primary),),
      //appbar theme
      appBarTheme: const AppBarTheme(elevation: 0, backgroundColor: primary));

  static final ThemeData dark = ThemeData.dark().copyWith(
    //color primary
      primaryColor: Colors.lightBlue,
      //appbar theme
      appBarTheme: const AppBarTheme(elevation: 0, backgroundColor: primary),

      scaffoldBackgroundColor: Colors.black
  );
}
