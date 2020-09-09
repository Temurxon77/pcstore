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
        SizedBox(height: 15.0),
        ListTile(
          title: Text("Chuck Norris",textAlign: TextAlign.center),
          subtitle: Text("Texas,USA",textAlign: TextAlign.center),
        ),
        Divider(height: 5.0,indent: 20.0,endIndent: 20.0,thickness: 0.5),
        ListTile(
          title: Text("Home"),
          onTap: () {},
        ),
        Divider(height: 5.0,indent: 20.0,endIndent: 20.0,thickness: 0.5),
        ListTile(
          title: Text("Cart"),
          onTap: () {
            Navigator.of(context).pushNamed("/cart");
          },
        ),
        Divider(height: 5.0,indent: 20.0,endIndent: 20.0,thickness: 0.5),
        ListTile(
          title: Text("Favourites"),
          onTap: () {
            Navigator.of(context).pushNamed("/favourites");
          },
        ),
        Divider(height: 5.0,indent: 20.0,endIndent: 20.0,thickness: 0.5),
        ListTile(
          title: Text("Settings"),
          onTap: () {
            Navigator.of(context).pushNamed("/settings");
          },
        ),
        Divider(height: 5.0,indent: 20.0,endIndent: 20.0,thickness: 0.5),
        ListTile(
          title: Text("Exit")
        ),
        Divider(height: 5.0,indent: 20.0,endIndent: 20.0,thickness: 0.5),
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