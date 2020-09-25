import 'package:flutter/material.dart';

class MaterialProductDescription extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MaterialProductDescriptionState();
  }
}
class MaterialProductDescriptionState extends State<MaterialProductDescription> {
  int dropdownValue = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(icon:Icon(Icons.arrow_back_ios,color: Colors.black),onPressed: () {
          if(Navigator.of(context).canPop()){
            Navigator.of(context).pop();
          }
        },),
        title: Text("Kick Frappe",style: TextStyle(color: Colors.black)),
        centerTitle: true,
        actions: [
          IconButton(icon: Icon(Icons.favorite_border,color: Colors.black), onPressed: () { })
        ],
      ),
      body: ListView(
        children: [
          Expanded(child:Image.asset("assets/images/asus_pc.jpg",fit: BoxFit.cover),flex: 3),
          Expanded(child: Padding(
            child:Text("Как увеличить количество поклонников страницы в Facebook? Как сделать так, чтобы они начали с вами взаимодействовать? И как превратить этих людей в клиентов и покупателей? Обо всем этом читайте в нашем полном пошаговом гайде.",
            style: TextStyle(fontSize: 24.0),
            textAlign: TextAlign.center,
            ),
            padding: const EdgeInsets.only(left: 20.0,right: 20.0,top: 10.0),
            ),
          flex: 2),
          SizedBox(height: 20.0),
          Expanded(
            flex: 2,
            child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
            SizedBox(
              width: MediaQuery.of(context).size.width*0.48,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Quantity",style: TextStyle(fontSize: 20.0),),
                SizedBox(height: 50.0,width: 50.0,child:TextFormField(
                  textAlign: TextAlign.center,
                  initialValue: "1",
                  keyboardType: TextInputType.number,
                ))
              ],
            )),
            Container(
              height: 200.0,
              width: 2.0,
              color: Colors.greenAccent,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width*0.48,
              child:Column(
                mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Price",style: TextStyle(fontSize: 20.0)),
                SizedBox(height: 20.0),
                Text("\$20",style: TextStyle(fontSize: 20.0))
              ]
            ))
          ])),
          Expanded(
            flex: 1,
            child: RawMaterialButton(
            onPressed: (){ },
            constraints: BoxConstraints(minWidth: double.infinity,minHeight: 70.0,maxHeight: 80.0),
            fillColor: Color(0xFA0C9F66),
            child: Text("Place the order",style: TextStyle(color: Colors.white,fontSize: 20.0)),          
          ))
        ]
      )
    );
  }

  @override
  void dispose(){
    super.dispose();
  }
}