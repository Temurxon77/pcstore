import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:pcstore/redux/store/AppState.dart';
import 'package:pcstore/screens/MaterialButton.dart';
import 'package:pcstore/utils/TextField.dart';

class MaterialSignUp extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldState = GlobalKey<ScaffoldState>();
  final TextEditingController numberController = new TextEditingController();

  void signUpAction(){
    if(numberController.value.text.isEmpty){
      scaffoldState.currentState.showSnackBar(SnackBar(
        content: Text("Field is required!"),
        action: SnackBarAction(label: "OK", onPressed: () {}),
      ));
    }
  }

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
              CircleAvatar(
                backgroundImage: AssetImage("assets/images/asus_pc.jpg"),
                radius: 85.0,
              ),
              SizedBox(height: 40.0),
              Padding(child: MaterialTextField(
                regex: '^(\+9989(9|8|7|5|4|3|1|0)[0-9]{7,7})\$',
                numberController: numberController,
                labelText: "Phone Number",
                placeholder: "+998991234567"
              ),padding: const EdgeInsets.only(left:30.0,right: 30.0)),
              SizedBox(height: 20.0),
              // RawMaterialButton(
              //   constraints: BoxConstraints(minWidth: 120.0,maxWidth: 150.0,minHeight: 50.0,maxHeight: 50.0),
              //   fillColor: Colors.green,
              //   onPressed: (){
              //     
              //     }
              //     // print("Number: ${numberController.value.text}");
              //   },
              //   child: Text("Send",style: TextStyle(fontSize: 20.0,color: Colors.white))
              // )
              MaterialRawButton(
                buttonCallback: signUpAction,
                 buttonText: "Sign Up",
                 buttonTextColorHex: 0xFFFFFFFF,
                 buttonTextFontSize: 18.0,
                 minWidth: 120.0,
                 maxWidth: 150.0,
                 minHeight: 50.0,
                 maxHeight: 80.0,
                 colorValueHex: 0xFA0C9F66,
                 paddingAll: 10.0)
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