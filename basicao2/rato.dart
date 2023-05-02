// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

 //coloca stl para ir tudo automatico  

class rato extends StatelessWidget {

  //atributos
final String nome;
final Color cor;
final double tamanhoFonte;

  const rato(this.nome, this.cor, this.tamanhoFonte,{super.key});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration (
        color: cor,
        ),
        child: Text(nome, style: TextStyle(fontSize: tamanhoFonte),),
        
      
        
     

    );
  }
}