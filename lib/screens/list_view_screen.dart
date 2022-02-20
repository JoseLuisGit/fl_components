import 'package:flutter/material.dart';

class ListViewScreen extends StatelessWidget {
   
  const ListViewScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return MediaQuery.removePadding(
      context: context,
      removeTop: true,
      removeBottom: true,
      child: Scaffold(
        body: ListView.builder(
          itemCount: 10,
          itemBuilder: (_, index){
            return FadeInImage(
              placeholder: const AssetImage('assets/load.gif'),
              image:  NetworkImage('https://picsum.photos/500/300?image=${index +1}'),
                    
            );
          }
          )
      ),
    );
  }
}