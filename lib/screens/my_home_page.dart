import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:miniappflutter/components/menu_components.dart';

class MyHomePage extends StatefulWidget{
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _State();
}
class _State extends State<MyHomePage> {

  final _myhomepageKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: Text("Home"),
      ),
      drawer: MenuComponenet(),
        body: Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Image.asset(
                'assets/images/Google-flutter-logo.jpg',
                height: 120,
                width: 120,
                fit: BoxFit.contain,
              ),
              ]
            ),
        ),
    ),
    );
  }
}