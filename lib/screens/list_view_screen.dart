import 'package:flutter/material.dart';

class ListViewScreen extends StatefulWidget {
  const ListViewScreen({Key? key}) : super(key: key);

  @override
  State<ListViewScreen> createState() => _ListViewScreenState();
}

class _ListViewScreenState extends State<ListViewScreen> {


  final _scrollController = ScrollController();

  List<int> listIds = [1,2,3,4,5,6,7,8,9,10];

  @override
  void initState() {
    _scrollController.addListener(() {
      //  print('${_scrollController.position.pixels}, ${_scrollController.position.maxScrollExtent}');
      if((_scrollController.position.pixels + 500) >= _scrollController.position.maxScrollExtent){
        addListIds();
      }

    });
    super.initState();
  }

  void addListIds(){
    int lastId = listIds.last;
    listIds.addAll(
      [1,2,3,4,5].map((e) => lastId + e)
    );
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MediaQuery.removePadding(
      context: context,
      removeTop: true,
      removeBottom: true,
      child: Scaffold(
        body: ListView.builder(
          physics: const BouncingScrollPhysics(),
          controller: _scrollController,
          itemCount: listIds.length,
          itemBuilder: (_, index){
            return FadeInImage(
              width: double.infinity,
              placeholder: const AssetImage('assets/load.gif'),
              image:  NetworkImage('https://picsum.photos/500/300?image=${listIds[index]}'),
                    
            );
          }
          )
      ),
    );
  }
}