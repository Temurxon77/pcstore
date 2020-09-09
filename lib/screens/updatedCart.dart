import 'package:flutter/material.dart';

import '../utils/constants.dart';

class MaterialCartUpdated extends StatefulWidget {
  static Constants constants = new Constants();
  @override
  State<StatefulWidget> createState() {
    return MaterialCartUpdatedState();
  }
}

class MaterialCartUpdatedState extends State<MaterialCartUpdated> {

  @override
  void initState(){
    super.initState();
  }

  int quantity = 0;
  @override
  Widget build(BuildContext context){
    return Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xFA0C9F66),
            leading: IconButton(icon: Icon(Icons.arrow_back_ios,color: Colors.white),onPressed: (){
              if(Navigator.of(context).canPop()){
                Navigator.of(context).pop();
              }
            }),
            title: Text("Cart",style: TextStyle(color: Colors.white)),
            centerTitle: true
          ),
          body: SafeArea(
            child: ListView(
              children: <Widget>[
                Card(
                  elevation: 20.0,
                  margin: const EdgeInsets.all(5.0),
                  child:SizedBox(
                  height: 150.0,
                  width: double.infinity,
                  child: Row(
                    children: <Widget>[
                      Expanded(child:Image.asset("assets/images/msi_pc.jpg",fit: BoxFit.fill),flex: 1),
                      Expanded(child: Column(
                        children: <Widget>[
                          ListTile(
                            title: Text("Asus Rog Strix RTX 2080 Ti"),
                            subtitle: Text("\$12.00 for 1 pcs"),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15.0,right: 15.0),
                            child:Row(
                            children: <Widget>[
                            Text("\$12.00"),
                            SizedBox(width: 20.0),
                            FlatButton(
                              child: Text("-",style: TextStyle(fontSize: 36.0,color: Colors.green)),
                              onPressed: () {
                                if(quantity > 0){
                                  setState(() {
                                    quantity--;
                                  });
                                }
                              },
                            ),
                            Text("$quantity",style: TextStyle(fontSize: 15.0,color: Colors.black)),
                            
                            FlatButton(
                              child: Text("+",style: TextStyle(fontSize: 24.0,color: Colors.green)),
                              onPressed: () {
                                setState(() {
                                  quantity++;
                                });
                              },
                            )
                          ]))
                        ],
                      ),flex: 3)

                    ]
                  ),
                )),
                Card(
                  elevation: 10.0,
                  margin: const EdgeInsets.all(5.0),
                  child:SizedBox(
                  height: 150.0,
                  width: double.infinity,
                  child: Row(
                    children: <Widget>[
                      Expanded(child:Image.asset("assets/images/msi_pc.jpg",fit: BoxFit.fill),flex: 1),
                      Expanded(child: Column(
                        children: <Widget>[
                          ListTile(
                            title: Text("Asus Rog Strix RTX 2080 Ti"),
                            subtitle: Text("\$12.00 for 1 pcs"),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15.0,right: 15.0),
                            child:Row(
                            children: <Widget>[
                            Text("\$12.00"),
                            SizedBox(width: 20.0),
                            FlatButton(
                              child: Text("-",style: TextStyle(fontSize: 36.0,color: Colors.green)),
                              onPressed: () {
                                if(quantity > 0){
                                  setState(() {
                                    quantity--;
                                  });
                                }
                              },
                            ),
                            Text("$quantity",style: TextStyle(fontSize: 15.0,color: Colors.black)),
                            
                            FlatButton(
                              child: Text("+",style: TextStyle(fontSize: 24.0,color: Colors.green)),
                              onPressed: () {
                                setState(() {
                                  quantity++;
                                });
                              },
                            )
                          ]))
                        ],
                      ),flex: 3)

                    ]
                  ),
                ))
              ]
            ),
          )
    );
  }
}