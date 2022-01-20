import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: AppTheme.primary, title: const Text('Card Components'),),
      body: ListView(
        children: const [
          Card(
            elevation: 5,
            margin: EdgeInsets.symmetric( horizontal: 20, vertical: 10),
            child: ListTile(
              leading: Icon(Icons.light, color: AppTheme.primary),
              title: Text('Hello World'),
              subtitle: Text('Culpa elit pariatur voluptate cupidatat incididunt ut enim. Duis tempor aute cupidatat elit dolor do reprehenderit consequat quis. Incididunt adipisicing culpa do consectetur amet mollit nulla ea nulla.'),
            ),
          )
        ],
      )
    );
  }
}