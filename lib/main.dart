import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const title = 'Search Play Books';

    return MaterialApp(
      title: title,
      home: Scaffold(
          backgroundColor: const Color.fromRGBO(38, 36, 36, 1.0),
        appBar:_buildMainAppBar(),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                //margin: const EdgeInsets.symmetric(vertical: 15.0),
                margin: const EdgeInsets.only(top: 15.0),
                //color: Colors.black54,
                height: 300.0,
                child: ListView(
                  // This next line does the trick.
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Container(
                        width: 170.0,
                        margin: const EdgeInsets.all(3.0),
                        color: Colors.red,
                    ),
                    Container(
                      width: 170.0,
                      margin: const EdgeInsets.all(3.0),
                      color: Colors.black38,
                    ),
                    Container(
                      width: 170.0,
                      margin: const EdgeInsets.all(3.0),
                      color: Colors.amberAccent,
                    ),
                    Container(
                      width: 170.0,
                      height: 270.0,
                      margin: const EdgeInsets.all(3.0),
                      color: Colors.greenAccent,
                    ),
                  ],
                ),
              ),

              //Stack(
                //children:[
                  Container(
                    alignment: Alignment.topCenter,
                    color: Colors.greenAccent,
                    height: 400,
                    child:  _tabTiposLibros(context),

                  ),
                  Container(

                    color: Colors.yellow,
                    child:  _tabMenuInferior(context),
                  )
               // ]
             // )
            ],
          ),
        )
      ),
    );
  }
}

//

AppBar _buildMainAppBar() {
  return AppBar(
      leading: const Icon(Icons.search),
      backgroundColor: const Color.fromRGBO(38, 36, 36, 0.1),
      title: const Text('Search Play Books')
  );
}

Widget _tabMenuInferior(BuildContext context) {
  return  DefaultTabController(

    length: 4, // length of tabs
    child: Column(crossAxisAlignment: CrossAxisAlignment.stretch,
      children: const <Widget>[
      TabBar(
        indicatorColor: Colors.transparent,
        labelColor: Colors.lightBlue,
        unselectedLabelColor: Colors.grey,
        tabs: [
          Tab(text: 'Home', icon: Icon(Icons.home_outlined)),
          Tab(text: 'Library', icon: Icon(Icons.library_books_outlined)),
          Tab(text: 'Wishlist', icon: Icon(Icons.bookmark_border_outlined)),
          Tab(text: 'Shop', icon:Icon(Icons.store_outlined)),
        ],
      ),
    ],
    ),
  );
}



Widget _tabTiposLibros(BuildContext context) {
  return  DefaultTabController(
    length: 2, // length of tabs
    child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: const <Widget>[
      TabBar(
        labelColor: Colors.lightBlue,
        unselectedLabelColor: Colors.grey,
        tabs: [
          Tab(text: 'Ebooks'),
          Tab(text: 'AudioBooks'),
        ],
      ),
    ],
    ),
  );
}