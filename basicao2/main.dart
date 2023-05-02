// ignore_for_file: prefer_const_constructors

import 'package:basicao/rato.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp( //MaterialApp é o widget raiz, tudo vai nele
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold( //home linka com outros widgets
        body:  Center (
          child: Column (
            mainAxisAlignment: MainAxisAlignment.center, //alinha verticalmente no centro 
            children: [ //vetor que posso colocar varios atributos
              //Text("Welcome to the Mato", style: TextStyle(fontSize: 30),),
              rato("wELCOME TO THE MATO", Colors.blue, 12),
              SizedBox(height: 10,),
              //Text("Here we wake up early LMAO", style: TextStyle(fontSize: 20),),
              rato("WELCOME BENTO", Colors.pink, 30),
              SizedBox(height: 22,),
              Image.network('https://blog.cobasi.com.br/wp-content/uploads/2021/09/mouse-1708177_1920.png',
                  width: 300, //se colcoar so um o outro ja vai automatico
                ),
                SizedBox(height: 10,),
            Row(
              // ignore: prefer_const_literals_to_create_immutables
              mainAxisAlignment: MainAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Text("Welcome", style: TextStyle(fontSize: 22),),
                SizedBox(width: 12,),
                Text(",", style: TextStyle(fontSize: 22),),
                SizedBox(width: 12,),
                Text("Bento", style: TextStyle(fontSize: 22),),
              ], //CHILDREN
            )
            ]
          )
        )
        ) 
    );
  }
}