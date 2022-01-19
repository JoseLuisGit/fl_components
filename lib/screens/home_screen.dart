import 'package:flutter/material.dart';

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

          },
        ), 
        separatorBuilder: ( _ , __ )=>const Divider(), 
        itemCount: 50),
    );
  }
}