import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:miniappflutter/components/menu_components.dart';

class SorteioPage extends StatefulWidget{
  const SorteioPage({super.key});

  @override
  State<SorteioPage> createState() => _State();
}
class _State extends State<SorteioPage> {

  final _sorteiopageKey = GlobalKey<FormState>();


  int? _outnumero = 0;

  void _Aleatorizar() {
    setState(() {
      _outnumero = Random().nextInt(100);
    });

    if (_outnumero == 50) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Você ganhou! 🎉"),
          backgroundColor: Colors.green,
          duration: Duration(seconds: 2),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: const Text("Sorteio"),
      ),
      drawer: MenuComponenet(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: _Aleatorizar,
              child: const Text("Número Aleatório"),
            ),
            const SizedBox(height: 20),
            Text("$_outnumero"),
          ],
        ),
      ),
    );
  }
}