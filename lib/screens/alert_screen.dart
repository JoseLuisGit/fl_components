import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
   
  const AlertScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: (){

          }, 
          child: const Padding(
            padding:  EdgeInsets.all(8.0),
            child:  Text('Show Alert', style: TextStyle( fontSize: 15),),
          ),
          /*style: ElevatedButton.styleFrom(
            primary: Colors.red,
            shape: const StadiumBorder(),
            elevation: 2
          ),*/
          )
        ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.pop(context);
        },
        child: const Icon(
          Icons.close,
        ),
      ),
    );
  }
}