import 'package:flutter/material.dart';
import 'package:pcstore/screens/updatedCart.dart';



class MaterialCartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        child: MaterialCartUpdated(),
      ),
    );
  }
}