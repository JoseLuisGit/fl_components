import 'package:flutter/material.dart';

import 'package:fl_components/theme/app_theme.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      margin: const EdgeInsets.symmetric( horizontal: 20, vertical: 10),
      child: Column(
        children: [
          const ListTile(
            leading: Icon(Icons.light, color: AppTheme.primary),
            title: Text('Hello World'),
            subtitle: Text('Culpa elit pariatur voluptate cupidatat incididunt ut enim. Duis tempor aute cupidatat elit dolor do reprehenderit consequat quis. Incididunt adipisicing culpa do consectetur amet mollit nulla ea nulla.'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(onPressed: (){}, child: const Text('Cancel')),
                TextButton(onPressed: (){}, child: const Text('Ok')),    
              ],
            ),
          )
        ],
      ),
    );
  }
}