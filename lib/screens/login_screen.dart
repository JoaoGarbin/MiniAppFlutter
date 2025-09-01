import 'package:flutter/material.dart';

import 'my_home_page.dart';

class LoginScreen extends StatefulWidget{
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _State();
}
class _State extends State<LoginScreen> {

  final _loginKey = GlobalKey<FormState>();

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _senhaController = TextEditingController();

  void _enviar() {
    if (_loginKey.currentState!.validate()) {
      final email = _emailController.text.trim();
      final senha = _senhaController.text.trim();

      if (email == "admin" && senha == "123") {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const MyHomePage()),
        );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Preencha todos os campos corretamente!"),
          backgroundColor: Colors.red,
        ),
      );
    }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: Text("Login"),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Form(key: _loginKey,
                child:
                Column(
                  children: [
                    TextFormField(
                      controller: _emailController,
                      decoration: InputDecoration(
                          labelText: "Email", border: OutlineInputBorder()),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "O email esta errado";
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 20),
                    TextFormField(
                      controller: _senhaController,
                      decoration: InputDecoration(
                        labelText: "Senha",
                        border: OutlineInputBorder(),
                      ),
                      obscureText: true,
                      keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value == null || value
                            .trim()
                            .isEmpty) {
                          return 'A senha esta incorreta';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 10),
                    ElevatedButton(
                        onPressed: () => _enviar(),
                        child: Text("Enviar")
                    )
                  ],
                )
            ),
          ],
        ),
      ),
    );
  }
}