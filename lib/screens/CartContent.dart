import 'package:flutter/material.dart';


class CartContent extends StatelessWidget {
  final String contentTitleString;
  final String contentValue;
  final int textColorValueHex;

  CartContent({@required this.contentTitleString,@required this.contentValue,@required this.textColorValueHex});

  @override
  Widget build(BuildContext context){
    return ListTile(
      title: Text("Price",style: TextStyle(color: Color(this.textColorValueHex))),
      trailing: Text(this.contentValue, style: TextStyle(color: Color(this.textColorValueHex),fontWeight: FontWeight.bold))
    );
  }
}