import 'package:flutter/material.dart';
import 'package:pcstore/utils/constants.dart';

class MaterialMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Center(child: CircleAvatar(
          backgroundImage: AssetImage("assets/images/asus_pc.jpg"),
          radius: 80.0,
        )),
        SizedBox(height: 20.0),
        ListTile(
          subtitle: Text("Texas,USA",textAlign: TextAlign.center),
        ),
        SizedBox(height: 10.0),
        ListTile(
          title: Text("Home"),
        ),
        SizedBox(height: 10.0),
        ListTile(
          title: Text("Settings"),
        ),
        SizedBox(height: 10.0),
        ListTile(
          title: Text("Exit"),
        ),
      ]
    );
  }

  Widget menuActivities(BuildContext context,String activityName,Color activityColor,IconData activityIcon){
    return ListTile(
      leading: Icon(activityIcon,color: activityColor),
      title: Text(activityName),
    );
  }


}