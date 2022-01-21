import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';


class CustomCard2 extends StatelessWidget {

  final String imgUrl; 
  final String? name;

  const CustomCard2({
    Key? key,
    required this.imgUrl,
    this.name
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      elevation: 30,
      shadowColor: AppTheme.primary,
      child: Column(
        children:  [
           FadeInImage(
            image: NetworkImage(imgUrl),
            placeholder: const AssetImage('assets/loading.gif'),
            width: double.infinity,
            height: 220,
            fit: BoxFit.cover,
            fadeInDuration: const Duration(milliseconds: 300),
          ),
          if( name != null )
            Container(
              padding: const EdgeInsets.all(8.0),
              alignment: Alignment.bottomRight,
              child: Text(name ?? 'Not Name'),
            )
        ],
      ),
    );
  }
}