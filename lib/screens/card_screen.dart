import 'package:flutter/material.dart';

import 'package:fl_components/theme/app_theme.dart';
import 'package:fl_components/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: AppTheme.primary, title: const Text('Card Components'),),
      body: ListView(
        children: const [
            CustomCard(),
            CustomCard2(imgUrl: 'https://wallpaper.dog/large/17026288.jpg', ),
            SizedBox(
              height: 8,
            ),
            CustomCard2(imgUrl: 'https://wallpaperaccess.com/full/1076309.jpg'),
            SizedBox(
              height: 8,
            ),
            CustomCard2(imgUrl: 'https://wallpaperbat.com/img/485814-autumn-cat-wallpaper-top-free-autumn-cat-background.jpg', name: 'This is a title',),
            SizedBox(
              height: 8,
            )
          ],
        )
    );
  }
}

