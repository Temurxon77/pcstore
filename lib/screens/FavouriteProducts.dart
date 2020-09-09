import 'package:flutter/material.dart';
import 'package:pcstore/screens/ProductView.dart';

class MaterialFavouriteProducts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Likes",style: TextStyle(fontSize: 20.0)),
        centerTitle: true,
        leading: IconButton(icon: Icon(Icons.arrow_back_ios),onPressed: () {
          if(Navigator.of(context).canPop()){
            Navigator.of(context).pop();
          }
        },),
      ),
      body: ListView.builder(
        itemCount: 12,
        itemBuilder: (BuildContext context,int i){
          return i%2 == 0 ? ProductView() : Divider(indent: 30.0,endIndent: 30.0,height: 10.0,color: Colors.black);
      }) 
    );
  }
}