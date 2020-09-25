import 'package:flutter/material.dart';

class MaterialCategoryCard extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return  GestureDetector(
          child: Card(child: Column(
            children: [
              Expanded(
                child: Image.asset("assets/images/asus_pc.jpg",fit: BoxFit.cover),
                flex: 2
              ),
              Expanded(
                child: ListTile(
                  title: Text("PC hardware"),
                  subtitle: Text("from CPU to GPU"),
                ),
                flex: 1
              )
            ]
          ) 
          ),
          onTap: (){ 
            try{
              Navigator.of(context).pushNamed("/products");
            }catch(e){
              print(e);
            }
          }
        );
  }
}