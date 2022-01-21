import 'package:flutter/material.dart';


class CustomCard2 extends StatelessWidget {
  const CustomCard2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Card(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      elevation: 10,
      child: FadeInImage(
          image: NetworkImage('https://wallpaper.dog/large/17026288.jpg'),
          placeholder: AssetImage('assets/loading.gif')),
    );
  }
}