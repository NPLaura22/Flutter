// ignore_for_file: prefer_const_constructors, implementation_imports, camel_case_types

//import 'package:flutter/src/widgets/container.dart';
//import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

class lion extends StatelessWidget {
  const lion(this.link,this.nome, this.tamanhoTexto, {super.key}); //construtor; passa os atributos aqui (parametros)

  //atributos
  final String link;
  final String nome; 
  final double tamanhoTexto;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration (),
      child: Padding (
        padding: EdgeInsets.all(5),
        child: Row(
          children: [
            SizedBox(
              width: 50,
              child: Image.network(link),
            ),
            Text(nome, style: TextStyle(fontSize: tamanhoTexto),)
          ],
        ),
      ),
    );
  }
}
