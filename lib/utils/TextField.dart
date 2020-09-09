import 'package:flutter/material.dart';

class MaterialTextField extends StatelessWidget {
  final TextEditingController numberController;
  final String placeholder;
  final String labelText;

  MaterialTextField({@required this.numberController,@required this.placeholder,@required this.labelText});

  @override
  Widget build(BuildContext context){
    return TextFormField(
      controller: numberController,
      validator: (String value){
        if(value.isEmpty){
          return "Field is required";
        }else{
          return "";
        }
      },
      decoration: InputDecoration(
        labelText: this.labelText,
        hintText: this.placeholder,
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