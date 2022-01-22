import 'package:flutter/material.dart';

class CircleScreen extends StatelessWidget {
   
  const CircleScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Circle Avatar'),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(child: Text('YQ'),),
          )
        ],
      ),
      body: const Center(
         child: CircleAvatar(
           radius: 150,
           backgroundImage: NetworkImage('https://es.web.img3.acsta.net/c_310_420/pictures/15/09/18/11/52/030640.jpg')
         )
      ),
    );
  }
}