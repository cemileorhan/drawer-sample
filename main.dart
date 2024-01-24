import 'package:ders1/drawer-inkwell.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Trial(),
    ),
  );
}
class Trial extends StatelessWidget{
  @override Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Drawer Menu")),
      body: Center(
          child: Text("Home Page")),
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Sally Green",),
              accountEmail: Text("greensally@mail.com"),
              currentAccountPicture: Image.asset("images/4.jpg"),
            ),
            Expanded(
              child: ListView(
                children: [
                  Drawersample(clickedmenu:"Clicked on Products Page", menu:"Products", avatar:Icons.home,),
                  Drawersample(clickedmenu:"Clicked on Profile Page", menu:"Profile", avatar:Icons.account_box,),
                  Drawersample(clickedmenu:"Clicked on Contact Page", menu:"Contact", avatar:Icons.phone,),
                  Drawersample(clickedmenu:"Clicked on About Page", menu:"About", avatar:Icons.favorite,),
                  Drawersample(clickedmenu:"Clicked on Settings Page", menu:"Settings", avatar:Icons.lock,),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

