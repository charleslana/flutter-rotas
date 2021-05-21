import 'package:flutter/material.dart';

class Argumentos {
  String nome;
  String senha;
  Argumentos(this.nome, this.senha);

  validar(nome, senha, context) {
    if (nome == 'charles' && senha == '123') {
      return Navigator.pushNamed(
        context,
        'segunda',
        arguments: Argumentos(nome, senha),
      );
    }
    Navigator.pushNamed(
      context,
      'terceira',
      arguments: Argumentos(nome, senha),
    );
  }
}
