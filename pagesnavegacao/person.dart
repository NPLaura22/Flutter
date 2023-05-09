
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Person extends StatelessWidget {
  const Person({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Person")), //para ter a seta voltar
      body: Center( child: Column(children: [
        Text("Person"),
      ]),),
    );
  }
}