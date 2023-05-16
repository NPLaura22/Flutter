// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Bag extends StatelessWidget {
  const Bag({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center( child: Column(children: [
        Text("Bag"),
        ElevatedButton(onPressed: () {
          Navigator.pushNamed(context, '/');
        }, 
        child: Text("Voltar")),  //botao para voltar
      ]),),
    );
  }
}