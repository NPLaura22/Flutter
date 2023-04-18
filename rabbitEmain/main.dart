// ignore_for_file: prefer_const_constructors

//import 'dart:js_util';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/my_rabbit.dart'; //impo´rta bibliotecas

void main() {
  runApp(const MyApp()); //roda o app
}

class MyApp extends StatelessWidget { //MyApp: classe, com mtodos e atributos; extends: heranca
  const MyApp({super.key}); //construtor (mesmo nome classe); super: chama construtor da superclasse

  // This widget is the root of your application.
  @override 
  Widget build(BuildContext context) {  //metodo build recebe como parametro context e retorna widget
    return MaterialApp( //MaterialApp: é um topo´de widget
      title: 'Primeiro Proj LL',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: Scaffold(
        appBar: AppBar (
          title: Text("Água Santa"),
          backgroundColor: Color.fromARGB(255, 1, 124, 161),
          centerTitle: true,
        ),  //AppBar é um widget
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // ignore: prefer_const_literals_to_create_immutables
            children: [ 
              my_rabbit("Clebson", Colors.blue, 60, 30),//chama a classe e tras junto os atributos, tem que colocar na ordem dos parametos do construtor
              SizedBox(height: 30), //ou poderia ser Divider
              my_rabbit("Joane", Colors.pink, 60, 30),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  DecoratedBox(
                  decoration: BoxDecoration (color: Colors.deepPurple),
                  child: Padding (
                  padding: EdgeInsets.all(10),
                  child: Text("a", style: TextStyle(fontSize: 60),),
                )
              ),
                  SizedBox(width: 15),
                  DecoratedBox(
                  decoration: BoxDecoration (color: Color.fromARGB(255, 91, 211, 141)),
                  child: Padding (
                  padding: EdgeInsets.all(10),
                  child: Text("aula", style: TextStyle(fontSize: 60),),
                )
              ),
                  SizedBox(width: 15),
                  DecoratedBox(
                  decoration: BoxDecoration (color: Color.fromARGB(255, 22, 151, 29)),
                  child: Padding (
                  padding: EdgeInsets.all(10),
                  child: Text("da", style: TextStyle(fontSize: 60),),
                )
              ),
                ],
              ),
              SizedBox(height: 30), //ou poderia ser Divider
              my_rabbit("Newtu", Colors.green, 20, 10),
              
              SizedBox(
                height: 150,
                width: 200,
                child: Image.network('https://cdn.pixabay.com/photo/2018/01/10/23/53/rabbit-3075088_960_720.png'),  
              ),
              
            ], //vetor
          ),
        ),
      )
    );
  }
}