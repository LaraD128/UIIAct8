import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List<Tab> tabs = [
    Tab(
      text: 'Item1',
      icon: Icon(Icons.shopping_bag),
    ),
    Tab(
      text: 'Item2',
      icon: Icon(Icons.shopping_bag),
    ),
    Tab(
      text: 'Item3',
      icon: Icon(Icons.shopping_bag),
    ),
    Tab(
      text: 'Item4',
      icon: Icon(Icons.shopping_bag),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Images',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DefaultTabController(
        length: tabs.length,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Ropa Lefleur'),
            backgroundColor: Color(0xffead76e), // Color hexadecimal
            bottom: TabBar(
              tabs: tabs,
            ),
          ),
          body: Container(
            color: Color(0xffffdee),
            child: TabBarView(
              children: [
                // Replace each Tab with the desired content
                Container(
                  alignment: Alignment.center,
                  child: Image.network(
                      'https://golflefleur.com/cdn/shop/files/DIGI-LEOPARD-VEST-GRN-01.jpg?v=1701742821&width=1920'),
                ),
                Container(
                  alignment: Alignment.topCenter,
                  child: Image.network(
                      'https://golflefleur.com/cdn/shop/files/CT70D.jpg?v=1714023281&width=1920'),
                ),
                Container(
                  alignment: Alignment.topCenter,
                  child: Image.network(
                      'https://golflefleur.com/cdn/shop/files/CURSIVE-CROTCH-TROUSER-KHA-01.jpg?v=1711139614&width=1920'),
                ),
                Container(
                  alignment: Alignment.topCenter,
                  child: Image.network(
                      'https://golflefleur.com/cdn/shop/files/FLEUR-CAMO-CROSSBODY-BLU-01.jpg?v=1712082162&width=1920'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
