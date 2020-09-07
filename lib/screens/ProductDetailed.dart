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
          IconButton(icon: Icon(Icons.favorite,color: Colors.redAccent), onPressed: () { })
        ],
      ),
      body: Column(
        children: [
          Expanded(child:Image.asset("assets/images/asus_pc.jpg",fit: BoxFit.cover),flex: 4),
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
                DropdownButton<int>(
                  value: dropdownValue,
                  icon: Icon(Icons.arrow_drop_down),
                  iconSize: 24,
                  items: List.generate(20, (index) => DropdownMenuItem(child: Text("${index+1}"),value: index+1)),
                  onChanged: (int value){
                    setState(() {
                      dropdownValue = value;
                    });
                  } 
                )
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
            constraints: BoxConstraints(minWidth: MediaQuery.of(context).size.width),
            fillColor: Color(0xFA0C9F66),
            child: Text("Place the order",style: TextStyle(color: Colors.white)),          
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