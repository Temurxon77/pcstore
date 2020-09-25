import 'package:flutter/material.dart';
import 'package:pcstore/screens/Settings.dart';


class MaterialSettingsPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MaterialSettingsPageState();
  }
}

class MaterialSettingsPageState extends State<MaterialSettingsPage> {
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
      body: Settings()
    );
  }
}