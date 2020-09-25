import 'package:flutter/material.dart';

class MaterialTextField extends StatelessWidget {
  final TextEditingController numberController;
  final String placeholder;
  final String labelText;
  final String regex;
 

  MaterialTextField({@required this.numberController,@required this.placeholder,@required this.labelText,@required this.regex});

  @override
  Widget build(BuildContext context){
    //RegExp regexp = new RegExp(r'\+9989(9|8|7|5|4|3|1|0)[0-9]{7,7}');
    return TextFormField(
      controller: numberController,
      validator: (String value){
        if(value.isEmpty){
          //print(regexp.hasMatch(value));
          return "Invalid number!";
        }else{
          return "";
        }
      },
      decoration: InputDecoration(
        labelText: this.labelText,
        hintText: this.placeholder,
        errorText: "Invalid number!",
        hintStyle: TextStyle(color: Colors.black38),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            width: 1.5,
            color: Colors.redAccent
          )
        ),
        focusColor: Colors.green,
      ),
      keyboardType: TextInputType.phone,
      style: TextStyle(
        fontSize: 20.0
      ),
    );
  }
}