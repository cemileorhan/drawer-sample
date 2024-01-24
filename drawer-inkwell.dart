import 'package:flutter/material.dart';
class Drawersample extends StatelessWidget{
  String? clickedmenu;
  String? menu;
  IconData? avatar;
  Drawersample({this.clickedmenu,this.menu,this.avatar});

  @override Widget build(BuildContext context) {
    return InkWell(
      onTap: (){ print(clickedmenu!); },
      child: ListTile(
        leading: Icon(avatar,color: Colors.blue,),
        title: Text(menu!),
        trailing: Icon(Icons.chevron_right,color: Colors.blue,),
      ),
      splashColor: Colors.blue,
    );
  }
}
