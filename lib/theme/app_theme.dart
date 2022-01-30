

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

      inputDecorationTheme: const InputDecorationTheme(
        floatingLabelStyle: TextStyle(color: primary),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: primary),
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15), topRight: Radius.circular(15))
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: primary),
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15), topRight: Radius.circular(15))
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15), topRight: Radius.circular(15))
        ),
      ),
      
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
