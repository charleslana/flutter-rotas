import 'package:flutter/material.dart';
import 'package:rotas/primeira-tela.dart';
import 'package:rotas/segunda-tela.dart';
import 'package:rotas/terceira-tela.dart';

class Rotas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: 'primeira',
      routes: {
        'primeira': (context) => PrimeiraTela(),
        'segunda': (context) => SegundaTela(),
        'terceira': (context) => TerceiraTela()
      },
    );
  }
}