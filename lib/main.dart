import 'package:flutter/material.dart';
import 'package:pcstore/pages/CartPage.dart';
import 'package:pcstore/pages/CategoriesPage.dart';
import 'package:pcstore/pages/SettingsPage.dart';
import 'package:pcstore/pages/productsPage.dart';
import 'package:pcstore/screens/categoryPage.dart';
import 'package:redux/redux.dart';
import 'package:flutter_redux/flutter_redux.dart';

import 'package:pcstore/redux/reducers/FontReducer.dart';
import 'package:pcstore/redux/store/AppState.dart';
import 'package:pcstore/screens/FavouriteProducts.dart';
import 'package:pcstore/screens/LoginPage.dart';
import 'package:pcstore/screens/ProductDetailed.dart';
import 'package:pcstore/screens/ProductView.dart';
import 'package:pcstore/screens/Settings.dart';
import 'package:pcstore/screens/SignUpPage.dart';
import 'package:pcstore/screens/introPage.dart';
import 'package:pcstore/screens/sideMenu.dart';
import 'package:pcstore/screens/updatedCart.dart';


void main(){
  final _initialState = AppState(sliderFontSize: 0.5,isLogged: false,isLoading: false);
  final Store<AppState> _store = Store<AppState>(reducer,initialState: _initialState);
  runApp(MyApp(store: _store));
}

class MyApp extends StatelessWidget {
  final Store<AppState> store;

  MyApp({@required this.store});
  @override
  Widget build(BuildContext context) {
    return StoreProvider(
      store: this.store, 
      child: MaterialApp(
        title: 'PC Store',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        initialRoute: store.state.isLogged ? '/home' : '/introPage',
        routes: {
          '/home': (BuildContext context) => MyHomePage(title: 'Categories'),
          '/introPage': (BuildContext context) => MaterialIntroPage(),
          '/login': (BuildContext context) => MaterialLogin(),
          '/signUp': (BuildContext context) => MaterialSignUp(),
          '/settings': (BuildContext context) => MaterialSettingsPage(),
          '/favourites': (BuildContext context) => MaterialFavouriteProducts(),
          '/cart': (BuildContext context) => MaterialCartPage(),
          '/products': (BuildContext context) => MaterialProductsList(),
          '/detailedProduct': (BuildContext context) => MaterialProductDescription()
        }
      )
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
      appBar: AppBar(
        title: Text(widget.title)
      ),
      body: SafeArea(
          child: CategoriesPage()
      )
    );
  }
}
