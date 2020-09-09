import 'package:flutter/material.dart';
import 'package:pcstore/models/Product.dart';
import 'package:pcstore/screens/CartContent.dart';
import 'package:pcstore/screens/MaterialButton.dart';

import '../utils/constants.dart';

class MaterialCart extends StatefulWidget {
  static Constants constants = new Constants();
  @override
  State<StatefulWidget> createState() {
    return MaterialCartState();
  }
}

class MaterialCartState extends State<MaterialCart> {
  Map<String,String> dataSet;
  List<Product> products;

  @override
  void initState(){
    super.initState();
    dataSet = MaterialCart.constants.cartContent[0];
    products = [
      Product(title: "intel Core i7 9700K",description: "6 cores 12 threads",quantity: 2,price: 12.00),
      Product(title: "intel Core i5 9400F",description: "4 cores 8 threads",quantity: 4,price: 6.00)
    ];
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xFA0C9F66),
            leading: IconButton(icon: Icon(Icons.arrow_back_ios,color: Colors.white),onPressed: (){}),
            title: Text("Cart",style: TextStyle(color: Colors.white)),
            centerTitle: true
          ),
          body: SafeArea(child: ListView(children:[
            Container(
                height: 300.0,
                width: double.infinity,
                child: PageView(
                  onPageChanged: (int index) {
                    setState(() {
                      dataSet = MaterialCart.constants.cartContent[index];
                    });
                  },
                  children: <Widget>[
                    Image.asset("assets/images/asus_pc.jpg",fit: BoxFit.cover),
                    Image.asset("assets/images/asus_rtx.jpg",fit: BoxFit.cover),
                    Image.asset("assets/images/msi_pc.jpg",fit: BoxFit.cover)
                  ]
                ),
              ),
              Padding(child:Text(dataSet['ProductTitle'],style: TextStyle(fontSize:24.0,color: Colors.black)),padding: const EdgeInsets.only(top: 20.0,bottom: 10.0,left: 10.0,right: 10.0)),
              ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: 6,
                itemBuilder: (BuildContext context,int index){
                return index%2 == 0 ? CartContent(textColorValueHex: 0xFAA4A4A4,contentTitleString: dataSet['ContentTitle'],contentValue: dataSet['ContentValue']) : Divider(color: Colors.green,height: 10.0,indent: 20.0,endIndent: 20.0,thickness: 0.5,); 
              }),
              CartContent(textColorValueHex: 0xFAA4A4A4,contentTitleString: "Subtotal",contentValue: dataSet['ContentValue']),
              Divider(height: 10.0,color: Colors.black,thickness: 1.0),
              CartContent(textColorValueHex: 0xFAA4A4A4,contentTitleString: "Total",contentValue: dataSet['ContentValue']),
              Divider(height: 10.0,color: Colors.black,thickness: 1.0),
              MaterialRawButton(
                buttonText: "Confirm The Order",colorValueHex: 0xFA0C9F66,buttonTextColorHex: 0xFAE0F3EB,
                buttonTextFontSize: 22.0,buttonCallback: (){},
                minHeight: 50.0,
                maxHeight: 70.0,
                minWidth: double.infinity,
                maxWidth: double.infinity,
                paddingAll: 10.0,
              ),
              MaterialOutlinedButton(
                buttonText: "Cancel The Order",
                colorValueHex: 0xFA0C9F66,
                buttonTextColorHex: 0xFAD2D2D2,
                buttonTextFontSize: 22.0,
                buttonCallback: (){},
                paddingAll: 10.0, borderColorValueHex: 0xFACECECE, borderWidth: 1.0, splashColorValueHex: 0xFA0C9F66,
              )
          ]
      )
      )
    );
  }
}