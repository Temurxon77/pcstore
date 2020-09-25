import 'package:flutter/material.dart';

class ProductView extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return GestureDetector(
      onTap: (){
        try{
          Navigator.of(context).pushNamed("/detailedProduct");
        }catch(e){
          print(e);
        }
      },
      child:Padding(
      padding: const EdgeInsets.only(left: 20.0,right: 20.0),
      child:Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Expanded(child: Image.asset("assets/images/asus_pc.jpg",fit: BoxFit.fill),flex: 1),
        Expanded(
          flex: 3,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
          children:[
          ListTile(
            title: Text("Iced Americano",style: TextStyle(fontSize: 20.0,color: Colors.black)),
            subtitle: Text("Locally Roasted",style: TextStyle(color: Colors.black12,fontSize: 18.0)),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0,right: 15.0),
            child:Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Text("\$10.50",style: TextStyle(color: Colors.green[300],fontSize: 18.0)),
            IconButton(icon:Icon(Icons.favorite_border),onPressed: () {})
          ]))
          ]
        ))
      ])
      )
    );
  }
}

// class ProductFavouriteView extends StatelessWidget {
  
// }