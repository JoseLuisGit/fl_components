import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class ListViewScreen extends StatefulWidget {
  const ListViewScreen({Key? key}) : super(key: key);

  @override
  State<ListViewScreen> createState() => _ListViewScreenState();
}

class _ListViewScreenState extends State<ListViewScreen> {


  final _scrollController = ScrollController();

  bool isLoading = false;
  List<int> listIds = [1,2,3,4,5,6,7,8,9,10];

  @override
  void initState() {
    _scrollController.addListener(() {
      //  print('${_scrollController.position.pixels}, ${_scrollController.position.maxScrollExtent}');
      if((_scrollController.position.pixels + 500) >= _scrollController.position.maxScrollExtent){
        //addListIds();
        fetchData();

      }

    });
    super.initState();
  }

  void fetchData()async {

    if(isLoading) return;

    isLoading = true;
    setState(() {});

    await Future.delayed(const Duration(seconds: 3));

    addListIds();

    isLoading = false;
    setState(() {});

    if((_scrollController.position.pixels + 100) <= _scrollController.position.maxScrollExtent) return;

    _scrollController.animateTo(
      _scrollController.position.pixels + 150, 
      duration: const Duration(milliseconds: 300), 
      curve: Curves.bounceIn);

  }

  void addListIds(){
    int lastId = listIds.last;
    listIds.addAll(
      [1,2,3,4,5].map((e) => lastId + e)
    );
    setState(() {});
  }

  Future<void> onRefresh()async{
    await Future.delayed(const Duration(seconds: 2));

    int lastId = listIds.last;

    listIds.clear();

    listIds.add(lastId);
    addListIds();
  }

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return MediaQuery.removePadding(
      context: context,
      removeTop: true,
      removeBottom: true,
      child: Scaffold(
        body: Stack(

          children: [
            RefreshIndicator(
              onRefresh: onRefresh,
              child: ListView.builder(
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
                ),
            ),
              if(isLoading)
                 Positioned(
                    bottom: 40,
                    left: _size.width/2 - 30,
                    child: const LoadingIcon()
                 )
          ],
        )
      ),
    );
  }
}

class LoadingIcon extends StatelessWidget {
  const LoadingIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.7),
          shape: BoxShape.circle,

        ),
        child: const CircularProgressIndicator(color: AppTheme.primary,)
      ),
    );
  }
}