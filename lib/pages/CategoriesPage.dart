import 'package:flutter/material.dart';
import 'package:pcstore/screens/categoryPage.dart';

class CategoriesPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return CategoriesPageState();
  }
}

class CategoriesPageState extends State<CategoriesPage> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SafeArea(
      child: GridView.count(
      scrollDirection: Axis.vertical,
      crossAxisCount: 2,
      children: List.generate(2, (index) => MaterialCategoryCard())
    )
      ),
    );
  }
}