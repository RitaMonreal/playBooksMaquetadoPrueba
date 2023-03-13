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
        backgroundColor: Colors.grey.shade900,
//Columna que abarca toda la pantalla
        body:Column(
          children: <Widget>[
//Se aplica solo a la parte móvil de la pantalla
            Expanded(
              child:  SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    _searchBox(context),
                    _listViewLibrosH(context),
                    Column(
                        children: <Widget>[
                          DecoratedBox(
                            decoration: BoxDecoration(
                              color: Colors.grey.shade800,
                              border: const Border(bottom: BorderSide(color: Colors.grey, width: 0.5)),
                            ),
                            child:  _tabTiposLibros(context),
                          ),
                          //Contenedor para la simulación de tabs
                          _tabTemporalExplore(context),
                          //Text('Hola'),
                          //List view horizontal de libros que vende la app
                          const Padding(
                            padding: EdgeInsets.only(top: 10.0, left: 25),
                            child:  Align(
                              alignment: Alignment.centerLeft,
                              child: Text('From enemies to lovers',
                                  style: TextStyle(fontSize: 18,
                                      color: Colors.white)
                              ),
                            ),
                          ),
                          Container(
                            //margin: const EdgeInsets.symmetric(vertical: 15.0),
                            //margin: const EdgeInsets.only(top: 15.0),
                            margin: const EdgeInsets.only(top: 15.0, left: 15.0, right: 15.0),
                            //color: Colors.black54,
                            height: 330.0,
                            child: ListView(
                              // This next line does the trick.
                              scrollDirection: Axis.horizontal,
                              children: <Widget>[
                                Container(
                                  width: 170.0,
                                  margin: const EdgeInsets.all(4.0),
                                  child: Column(
                                      children: <Widget>[
                                        Container(
                                          height: 250.0,
                                          decoration: const BoxDecoration(
                                            image:  DecorationImage(
                                              image: ExactAssetImage('assets/prideAndPrejudice.jpg'),
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                        ),
                                        const Text('Pride and Predujice'
                                            'Jane Austen',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(color: Colors.grey)),
                                      ]
                                  ),
                                ),

                                Container(
                                  width: 170.0,
                                  margin: const EdgeInsets.all(4.0),
                                  child: Column(
                                      children: <Widget>[
                                        Container(
                                          height: 250.0,
                                          decoration: const BoxDecoration(
                                            image: DecorationImage(
                                              image: ExactAssetImage('assets/elPsicoanalista.jpg'),
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                        ),
                                        const Text('El psicoanálista'
                                            'John Katzenbach',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(color: Colors.grey)),
                                      ]
                                  ),
                                ),
                                Container(
                                  width: 170.0,
                                  margin: const EdgeInsets.all(4.0),
                                  child: Column(
                                      children: <Widget>[
                                        Container(
                                          height: 250.0,
                                          decoration: const BoxDecoration(
                                            image: DecorationImage(
                                              image: ExactAssetImage('assets/cancionesPaula.jpg'),
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                        ),
                                        const Text('Canciones para Paula'
                                            'Blue Jeans',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(color: Colors.grey)),
                                      ]
                                  ),
                                ),
                                Container(
                                  width: 170.0,
                                  margin: const EdgeInsets.all(4.0),
                                  child: Column(
                                      children: <Widget>[
                                        Container(
                                          height: 250.0,
                                          decoration: const BoxDecoration(
                                            image: DecorationImage(
                                              image: ExactAssetImage('assets/redWhiteBlue.jpg'),
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                        ),
                                        const Text('Rojo, blanco y sangre azul'
                                            'Casey McQuiston',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(color: Colors.grey))
                                      ]
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                    ),
                  ],
                ),
              ),
            ),
            _mitadPantallaTabBarCategorias(context),
          ],
        ),
      ),
    );
  }
}

Widget _tabTemporalExplore(BuildContext context){
  return SizedBox(
      height: 360.0,
      child: Column(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(top: 35.0),
            width: 370.0,
            height: 160.0,
            decoration: const BoxDecoration(
              image:  DecorationImage(
                image: ExactAssetImage('assets/bannerDescuento.jpg'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 20.0, left: 25),
            child:  Align(
              alignment: Alignment.centerLeft,
              child: Text('Explore Play Books',
                  style: TextStyle(fontSize: 18,
                      color: Colors.white)
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 13.0, left: 15.0, right: 15.0),
            height: 100.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
                  width: 150.0,
                  margin: const EdgeInsets.all(6.0),
                  decoration: const BoxDecoration(
                    image:  DecorationImage(
                      image: ExactAssetImage('assets/genres.jpg'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Container(
                  width: 180.0,
                  margin: const EdgeInsets.all(6.0),
                  decoration: const BoxDecoration(
                    image:  DecorationImage(
                      image: ExactAssetImage('assets/topSelling.jpg'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Container(
                  width: 200.0,
                  margin: const EdgeInsets.all(6.0),
                  decoration: const BoxDecoration(
                    image:  DecorationImage(
                      image: ExactAssetImage('assets/newReleases.jpg'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      )
  );
}

Widget _listViewLibrosH(BuildContext context){
  return Container(
    margin: const EdgeInsets.only(top: 13.0, left: 15.0, right: 15.0),
    height: 310.0,
    child: ListView(
// This next line does the trick.
      scrollDirection: Axis.horizontal,
      children: <Widget>[
//Container de toda la información hereda el tamaño de altura que dí para toda la listView
        Container(
          width: 170.0,
          margin: const EdgeInsets.all(4.0),
          child: Column(
              children: <Widget>[
                Container(
                  height: 250.0,
                  decoration: const BoxDecoration(
                    image:  DecorationImage(
                      image: ExactAssetImage('assets/littleLife.jpg'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 5.0),
                  child: Text ('Tan Poca Vida',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 15,
                          color: Colors.white)),
                ),
                const Text('100% complete',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.grey)),
              ]
          ),
        ),

        Container(
          width: 170.0,
          margin: const EdgeInsets.all(4.0),
          child: Column(
              children: <Widget>[
                Container(
                  height: 250.0,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: ExactAssetImage('assets/janeEyre.jpg'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 5.0),
                  child: Text ('Jane Eyre',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 15,
                          color: Colors.white)),
                ),
                const Text('64% complete',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.grey)),
              ]
          ),
        ),
        Container(
          width: 170.0,
          margin: const EdgeInsets.all(4.0),
          child: Column(
              children: <Widget>[
                Container(
                  height: 250.0,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: ExactAssetImage('assets/cruelPrince.jpg'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 5.0),
                  child: Text ('The Cruel Prince',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 15,
                          color: Colors.white)),
                ),
                const Text('3% complete',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.grey)),
              ]
          ),
        ),
        Container(
          width: 170.0,
          margin: const EdgeInsets.all(4.0),
          child: Column(
              children: <Widget>[
                Container(
                  height: 250.0,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: ExactAssetImage('assets/tokioBlues.jpg'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 5.0),
                  child: Text ('Tokio blues',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 15,
                          color: Colors.white)),
                ),
                const Text('0% complete',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.grey))
              ]
          ),
        ),
      ],
    ),
  );
}

Widget _mitadPantallaTabBarCategorias(BuildContext context)
{
  return Container(
      color: Colors.grey.shade800,
      height: 74.0,
      child:  _tabMenuInferior(context)
  );
}

Widget _searchBox(BuildContext context){
  return const Padding(
    padding: EdgeInsets.only(left: 11.0, top: 45.0,right: 11.0, bottom: 0.0 ),
    child: TextField(
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.search),
        border: OutlineInputBorder(),
        filled: true,
        fillColor: Colors.grey,
        contentPadding: EdgeInsets.symmetric(vertical: 12),
        hintText: 'Search Play Books',
      ),
    ),
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
  return DefaultTabController(
    length: 2, // length of tabs
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch, children: const <Widget>[
      TabBar(
        indicatorColor: Colors.lightBlue,
        indicatorSize: TabBarIndicatorSize.label,
        labelColor: Colors.lightBlue,
        unselectedLabelColor: Colors.grey,
        labelPadding: EdgeInsets.all(0),
        tabs: [
          Tab(text: 'Ebooks'),
          Tab(text: 'AudioBooks'),
        ],
      ),
    ],
    ),
  );
}
