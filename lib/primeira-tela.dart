import 'package:flutter/material.dart';
import 'package:rotas/argumentos.dart';

class PrimeiraTela extends StatelessWidget {
  TextEditingController nome = TextEditingController();
  TextEditingController senha = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Argumentos argumentos = new Argumentos('name', 'senha');
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Primeira Tela'),
        ),
        body: Column(
          children: [
            TextField(controller: nome),
            TextField(controller: senha),
            ElevatedButton(
              onPressed: () => argumentos.validar(nome.text, senha.text, context),
              child: Text('Segunda Tela'),
            ),
          ],
        ),
      ),
    );
  }
}
