import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {
  
  final options = const ['Megaman', 'Metal Gear', 'Super Smash', 'Final Fantasy', 'Yolanda'];
   
  const Listview2Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: const Text('List View 2'),
      ),
      body: ListView.separated(
        itemCount: options.length,
        itemBuilder: (context, index){
          return ListTile(
            title: Text(options[index]),
            trailing: const Icon(Icons.arrow_right, color: Colors.indigo,),
            onTap: (){
              final game = options[index];
              print(game);
            }
          ,);
        },
        separatorBuilder: (_, __)=> const Divider()
        )
    );
  }
}