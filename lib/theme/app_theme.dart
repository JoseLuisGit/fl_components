

import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.tealAccent;

  static final ThemeData light = ThemeData.light().copyWith(
      //color primary
      primaryColor: Colors.orange,
      //appbar theme
      appBarTheme: const AppBarTheme(elevation: 0, backgroundColor: primary));

  static final ThemeData dark = ThemeData.dark().copyWith(
    //color primary
      primaryColor: Colors.tealAccent,
      //appbar theme
      appBarTheme: const AppBarTheme(elevation: 0, backgroundColor: primary),

      scaffoldBackgroundColor: Colors.black
  );
}
