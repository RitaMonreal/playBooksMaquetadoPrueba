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
        appBar:_buildMainAppBar(),
        body: Column(
          children: <Widget>[
            Container(
              //margin: const EdgeInsets.symmetric(vertical: 15.0),
              margin: const EdgeInsets.only(top: 15.0),
              color: Colors.black54,
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
                color: Colors.cyan,
                height: 456,
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
      leading: Icon(Icons.search),
      backgroundColor: Colors.black45,
      title: const Text('Search Play Books')
  );
}
