

import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.deepPurple;

  static final ThemeData light = ThemeData.light().copyWith(
      //color primary
      primaryColor: Colors.lightBlue,

      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: primary
      ),
      
      textButtonTheme: TextButtonThemeData(style: TextButton.styleFrom(primary: primary),),
      //appbar theme
      appBarTheme: const AppBarTheme(elevation: 0, backgroundColor: primary),
      
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            primary: primary, shape: const StadiumBorder(), elevation: 2),
      ));

  static final ThemeData dark = ThemeData.dark().copyWith(
    //color primary
      primaryColor: Colors.lightBlue,
      //appbar theme
      appBarTheme: const AppBarTheme(elevation: 0, backgroundColor: primary),

      scaffoldBackgroundColor: Colors.black
  );
}
