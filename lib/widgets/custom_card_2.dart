import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';


class CustomCard2 extends StatelessWidget {
  const CustomCard2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      elevation: 20,
      shadowColor: AppTheme.primary,
      child: Column(
        children:  [
          const FadeInImage(
              image: NetworkImage('https://wallpaper.dog/large/17026288.jpg'),
              placeholder: AssetImage('assets/loading.gif'),
              width: double.infinity,
              height: 220,
              fit: BoxFit.cover,
              fadeInDuration: Duration( milliseconds: 300 ),
              ),
              Container(
                padding: const EdgeInsets.all(8.0),
                alignment: Alignment.bottomRight,
                child: const Text('Imagen de Internet'),
              )
        ],
      ),
    );
  }
}