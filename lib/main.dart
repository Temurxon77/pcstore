import 'package:flutter/material.dart';
import 'package:pcstore/screens/FavouriteProducts.dart';
import 'package:pcstore/screens/ProductDetailed.dart';
import 'package:pcstore/screens/introPage.dart';
import 'package:pcstore/screens/sideMenu.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PC Store',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(title: 'PC store'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(child:MaterialMenu(),
          padding: const EdgeInsets.only(left: 10.0,right: 10.0)
        ),
      ),
      // appBar: AppBar(
      //   title: Text(widget.title)
      // ),
      body: Center(
        child: MaterialFavouriteProducts()
      )// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
