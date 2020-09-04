import 'package:flutter/material.dart';

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
          title: Text("Chuck Norris",textAlign: TextAlign.center,style: TextStyle(fontSize: 22.0)),
          subtitle: Text("Texas,USA",textAlign: TextAlign.center),
        )
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