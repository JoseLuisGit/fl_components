import 'package:flutter/material.dart';

import 'package:fl_components/screens/screens.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: const Center(child: Text('Componentes de Flutter'),),
      ),
      body: ListView.separated(
        itemBuilder: (context, index)=>ListTile(
          title: const Text('Hello World'),
          trailing: const Icon(Icons.arrow_right_sharp, color: Colors.indigo,),
          onTap: (){

           /*final route = MaterialPageRoute(
                      builder: (context) => const Listview2Screen());
           */
            Navigator.pushNamed(context, 'listview1');
          },
        ), 
        separatorBuilder: ( _ , __ )=>const Divider(), 
        itemCount: 50),
    );
  }
}