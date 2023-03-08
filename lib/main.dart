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
        backgroundColor: Colors.pink,
        //Columna que abarca toda la pantalla
        body:Column(
          children: <Widget>[
            //Se aplica solo a la parte móvil de la pantalla
            SingleChildScrollView(
              //Columna que abarca toda la pantalla menos el menú inferior
              child: Column(
                children: <Widget>[
                  const Padding(
                    padding: EdgeInsets.only(left: 8.0, top: 45.0,right: 8.0, bottom: 0.0 ),

                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        filled: true,
                        fillColor: Colors.white,
                        hintText: 'Search Play Books',
                      ),
                    ),
                  ),
                  //Contenedor de la list view
                  Container(
                    //margin: const EdgeInsets.symmetric(vertical: 15.0),
                    margin: const EdgeInsets.only(top: 15.0),
                    //color: Colors.black54,
                    height: 300.0,
                    child: ListView(
                      // This next line does the trick.
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        //Container de toda la información hereda el tamaño de altura que dí para toda la listView
                        Container(
                        width: 170.0,
                        margin: const EdgeInsets.all(3.0),
                        decoration: new BoxDecoration(
                          image: new DecorationImage(
                            image: ExactAssetImage('assets/littleLife.jpg'),
                            fit: BoxFit.fill,
                          ),
                        ),
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
                  //tabBar a mitad de pantalla
                  Container(
                    alignment: Alignment.topCenter,
                    color: Colors.greenAccent,
                    height: 368,
                    child:  _tabTiposLibros(context),

                  ),
                ],
              ),
            ),
            Container(
              //alignment: Alignment.topCenter,
              color: Colors.yellow,
              child:  _tabMenuInferior(context),
            ),
          ],
        ),
      ),
    );
  }
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