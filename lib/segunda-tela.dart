import 'package:flutter/material.dart';
import 'package:rotas/argumentos.dart';

class SegundaTela extends StatelessWidget {
  TextEditingController nome = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Argumentos argumentos = ModalRoute.of(context).settings.arguments;
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Segunda Tela'),
        ),
        body: Column(
          children: [
            Text('Boa noite ${argumentos.nome}'),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  'primeira',
                  arguments: Argumentos(nome.text, nome.text),
                );
              },
              child: Text('Primeira Tela'),
            ),
          ],
        ),
      ),
    );
  }
}
