import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:pcstore/redux/actions/FontAction.dart';
import 'package:pcstore/redux/store/AppState.dart';
import 'package:pcstore/utils/constants.dart';


class Settings extends StatelessWidget {
  
  //static Constants constants = new Constants();
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
        centerTitle: true,
        leading: IconButton(icon: Icon(Icons.arrow_back_ios),onPressed: () {
          if(Navigator.of(context).canPop()){
            Navigator.of(context).pop();
          }
        })
      ),
      body: StoreConnector<AppState,AppState>(
        converter: (store) => store.state,
        builder: (BuildContext context,AppState state){
          return SafeArea(child: ListView(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(child:ListTile(
                    title: Text("FontSize"),
                    subtitle: Text("${state.viewFontSize.toInt()}"),
                  ),
                  width: MediaQuery.of(context).size.width/2,
                  ),
                  SizedBox(child:Slider(
                    value: state.sliderFontSize,
                    min: 0.5,
                    onChanged: (double value){
                      StoreProvider.of<AppState>(context).dispatch(FontSize(payload: value));
                    },
                  ),width: MediaQuery.of(context).size.width/2)
                ],
              ),
              Divider(color: Colors.grey,thickness: 0.5,height: 10.0,endIndent: 20.0,indent: 20.0),
              ListTile(
                title: Text("Text Bold"),
                trailing:Checkbox(value: state.bold, onChanged: (bool value){
                    StoreProvider.of<AppState>(context).dispatch(Bold(payload: value));
                  })
              ),
              Divider(color: Colors.grey,thickness: 0.5,height: 10.0,endIndent: 20.0,indent: 20.0),
              ListTile(
                title: Text("Text Italic"),
                trailing:Checkbox(value: state.italic, onChanged: (bool value){
                    StoreProvider.of<AppState>(context).dispatch(Italic(payload: value));
                  })
              )
            ]
          ));
        }
      )
    );
  } 
}