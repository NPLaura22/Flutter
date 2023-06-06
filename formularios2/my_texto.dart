// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MyTexto extends StatefulWidget {
  const MyTexto({super.key});

  @override
  State<MyTexto> createState() => _MyTextoState();
}

class _MyTextoState extends State<MyTexto> {
  String textoDigitado = '';
  TextEditingController campoTexto = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center (child: Column (children: [
        TextField(
          controller: campoTexto,
          onChanged:(value) {
            print(value);
          },
          style: TextStyle (
            color: Colors.white,
            fontSize: 16.0,
            fontWeight: FontWeight.normal,
          ),
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.red,
            border: OutlineInputBorder (borderRadius: BorderRadius.circular(10.0))
          ),
        ),
        ElevatedButton(onPressed: () {
          textoDigitado = campoTexto.text;
          setState(() {
            
          });
        },
        child: Text("ok")
        ),
        ElevatedButton(onPressed: () {
          textoDigitado="";
          campoTexto.clear();
          setState(() {
            
          });
        },
        child: Text("Limpar")),
        Text("Você digitou $textoDigitado"),
      ]),)
    );
  }
}