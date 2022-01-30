import 'package:flutter/material.dart';

class InputScreen extends StatelessWidget {
   
  const InputScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TextFormField(
              autofocus: true,
              initialValue: 'Ingrese',
              textCapitalization: TextCapitalization.words,
              onChanged: (value){
                  print(value);
              },
            )
          ],
        ),
      )
    );
  }
}