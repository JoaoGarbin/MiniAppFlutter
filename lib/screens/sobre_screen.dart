import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:miniappflutter/components/menu_components.dart';

class SobrePage extends StatefulWidget{
  const SobrePage({super.key});

  @override
  State<SobrePage> createState() => _State();
}
class _State extends State<SobrePage> {

  final _sobrepageKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: Text("Sobre"),
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
                     const Text(
                      "App desenvolvido em sala de aula para praticar Flutter.",
                     textAlign: TextAlign.center,
                     style: TextStyle(fontSize: 18),
                     ),
                     const SizedBox(height: 40),

                const Text(
                    "Desenvolvido por: João Vítor dos Santos Garbin",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                ),
                ],
                ),
        ),
    ),
    );
  }
}