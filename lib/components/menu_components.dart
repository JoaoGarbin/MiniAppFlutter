import 'package:flutter/material.dart';
import 'package:miniappflutter/screens/sobre_screen.dart';
import 'package:miniappflutter/screens/sorteio_screen.dart';

import '../screens/my_home_page.dart';

class MenuComponenet extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return
      Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Text("Bem-Vindo!",
                style: TextStyle(color: Colors.deepPurple, fontSize: 20),
              ),
            ),
            ListTile(
              title: Text("Home"),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => MyHomePage()));
              },
            ),
            ListTile(
              title: Text("Sorteio"),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => SorteioPage()));
              },
            ),
            ListTile(
              title: Text("Sobre"),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => SobrePage()));
              },
            ),
          ],
        ),
      );
  }
}