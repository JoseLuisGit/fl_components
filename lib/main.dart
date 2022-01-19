import 'package:flutter/material.dart';

import 'screens/screens.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'listview2',
      routes: {
        'card': (BuildContext context) => const CardScreen(),
        'alert': (BuildContext context) => const AlertScreen(),
        'listview1': (BuildContext context) => const Listview1Screen(),
        'listview2': (BuildContext context) => const Listview2Screen(),
      }
    );
  }
}