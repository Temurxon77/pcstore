import 'package:flutter/material.dart';
import 'package:pcstore/screens/ProductView.dart';

class MaterialProductsList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MaterialProductsListState();
  }
}

class MaterialProductsListState extends State<MaterialProductsList> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
    appBar: AppBar(
      title: Text("Products"),
      centerTitle: true,
      leading: IconButton(icon: Icon(Icons.arrow_back_ios), onPressed: (){
        try{
          if(Navigator.of(context).canPop()){
            Navigator.of(context).pop();
          }
        }catch(e){
          print(e);
        }
      }),
    ),
    body: ListView.builder(
      itemCount: 6,
      itemBuilder: (BuildContext context,int index){
      return ProductView();
    })
    );
  }
}