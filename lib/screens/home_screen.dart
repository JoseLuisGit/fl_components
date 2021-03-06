import 'package:fl_components/router/app_routes.dart';
import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Componentes de Flutter'),),
      ),
      body: ListView.separated(
        itemBuilder: (context, index)=>ListTile(
          title: Text(AppRoutes.menuOption[index].title),
          leading: Icon(AppRoutes.menuOption[index].icon, color: AppTheme.primary),
          onTap: (){
            Navigator.pushNamed(context, AppRoutes.menuOption[index].route);
          },
        ), 
        separatorBuilder: ( _ , __ )=>const Divider(), 
        itemCount: AppRoutes.menuOption.length),
    );
  }
}