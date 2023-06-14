// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class MyCliente extends StatelessWidget {
  const MyCliente({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculadora"),
        backgroundColor: const Color.fromARGB(255, 20, 49, 73),
        actions: [
        IconButton(
          onPressed: () {
            Navigator.pushNamed(context, '/cliente');
          },
          icon: Icon(Icons.person),
        ),
        IconButton(
          onPressed: () {
            Navigator.pushNamed(context, '/produto');
          },
          icon: Icon(Icons.production_quantity_limits),
        ),
        ],
      ),
      body: Center(child: Column(children: [
        SizedBox(
          height: 20,
        ),
       DecoratedBox(
        decoration: BoxDecoration(),
        child: Padding (
          padding: EdgeInsets.only(left: 50, right: 50),
          child: Text("CLIQUE NO # E EFETUE SEUS CÁLCULOS!", style: TextStyle(fontSize: 20, foreground: Paint()..color = Color.fromARGB(164, 86, 194, 172), fontWeight: FontWeight.bold),),),
        ),
        SizedBox(
          height: 20,
        ),
        /*Image.network('https://blog.cobasi.com.br/wp-content/uploads/2021/09/mouse-1708177_1920.png',
          width: 300, 
        ),*/
      ],)),
    );

  }
}