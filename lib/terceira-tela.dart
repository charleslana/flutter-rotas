import 'package:flutter/material.dart';

import 'argumentos.dart';

class TerceiraTela extends StatelessWidget {
  TextEditingController nome = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Terceira Tela'),
        ),
        body: Column(
          children: [
            Text('Credenciais inválida.'),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  'primeira',
                  arguments: Argumentos(nome.text, nome.text),
                );
              },
              child: Text('Voltar'),
            ),
          ],
        ),
      ),
    );
  }
}
