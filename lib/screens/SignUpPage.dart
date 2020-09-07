import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:pcstore/redux/store/AppState.dart';

class MaterialSignUp extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldState = GlobalKey<ScaffoldState>();
  final TextEditingController numberController = new TextEditingController();
  @override
  Widget build(BuildContext context){
    return Scaffold(
      key: scaffoldState,
      body: StoreConnector<AppState,AppState>(
        converter: (store) => store.state,
        builder: (BuildContext context,AppState state){
        return SafeArea(child:Form(
          child: Stack(
            children: [
              state.isLoading ? Center(
                child: CircularProgressIndicator(),
              ) : SizedBox(),
            Opacity(
              opacity: state.isLoading ? 0.5 : 1.0,
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(child:TextFormField(
                controller: numberController,
                validator: (String value){
                  if(value.isEmpty){
                    return "Field is required";
                  }else{
                    return "";
                  }
                },
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 1.5,
                      color: Colors.green
                    )
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 1.5,
                      color: Colors.redAccent
                    )
                  ),
                  focusColor: Colors.green,
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 1.5,
                      color: Colors.green
                    )
                  )
                ),
                keyboardType: TextInputType.phone,
                style: TextStyle(
                  fontSize: 20.0
                ),
              ),padding: const EdgeInsets.only(left:30.0,right: 30.0)),
              SizedBox(height: 20.0),
              RawMaterialButton(
                constraints: BoxConstraints(minWidth: 120.0,maxWidth: 150.0,minHeight: 50.0,maxHeight: 50.0),
                fillColor: Colors.green,
                onPressed: (){
                  if(numberController.value.text.isEmpty){
                    scaffoldState.currentState.showSnackBar(SnackBar(
                      content: Text("Field is required!"),
                      action: SnackBarAction(label: "OK", onPressed: () {}),
                    ));
                  }
                  // print("Number: ${numberController.value.text}");
                },
                child: Text("Send",style: TextStyle(fontSize: 20.0,color: Colors.white))
              )
          ]
        ))
            ]
          ) 
      ));
      }
      )
    );
  }
}