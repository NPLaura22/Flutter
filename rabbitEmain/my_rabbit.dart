// ignore_for_file: prefer_const_constructors

import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

class my_rabbit extends StatelessWidget {
  const my_rabbit(this.nome, this.cor, this.tamanhoTexto, this.tamanhoBorda, {super.key}); //construtor; passa os atributos aqui (parametros)

  //atributos
  final String nome; //atribtuos sao final para nao mudar de estado 
  final Color cor;
  final double tamanhoTexto;
  final double tamanhoBorda;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
                decoration: BoxDecoration (color: cor),
                child: Padding (
                  padding: EdgeInsets.all(tamanhoBorda),
                  child: Text(nome, style: TextStyle(fontSize: tamanhoTexto),),
                )
              );
  }
}