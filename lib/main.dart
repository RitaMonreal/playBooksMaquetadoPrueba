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
        body: Column(
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
            FractionallySizedBox(
              alignment: Alignment.topCenter,
              widthFactor: 1.0,
              //heightFactor: 1.0,
              child: Container(
                color: Color.fromRGBO(38, 36, 36, 0.5),
                height: 456,
                child:  _tabTiposLibros(context),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

AppBar _buildMainAppBar() {
  return AppBar(
      leading: const Icon(Icons.search),
      backgroundColor: const Color.fromRGBO(38, 36, 36, 0.1),
      title: const Text('Search Play Books')
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