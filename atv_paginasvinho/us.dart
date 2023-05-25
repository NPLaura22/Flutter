// ignore_for_file: prefer_const_constructors

//import 'dart:js_util';

import 'package:flutter/material.dart'; //impo´rta bibliotecas

void main() {
  runApp(const Us()); //roda o app
}

class Us extends StatelessWidget { //MyApp: classe, com mtodos e atributos; extends: heranca
  const Us({super.key}); //construtor (mesmo nome classe); super: chama construtor da superclasse

  // This widget is the root of your application.
  @override 
  Widget build(BuildContext context) {  //metodo build recebe como parametro context e retorna widget
    return MaterialApp( //MaterialApp: é um topo´de widget
      debugShowCheckedModeBanner: false,
      title: 'UsPage',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar (
          title: Text("Sobre nós"),
          backgroundColor: Color.fromARGB(255, 142, 219, 213),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/welcome');
              },
              icon: Icon(Icons.wine_bar),
            ),
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/counter');
              },
              icon: Icon(Icons.countertops),
            ),
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/us');
              },
              icon: Icon(Icons.person),
            ),
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/home');
              },
              icon: Icon(Icons.home),
            ),
      ],
          centerTitle: false,
        ),  //AppBar é um widget
        body: SingleChildScrollView(   
          scrollDirection: Axis.vertical,         
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // ignore: prefer_const_literals_to_create_immutables
            children: [ 
              SizedBox(height: 10,),
              Image.network('https://www.unicamp.br/unicamp/sites/default/files/2020-03/atu_fca_20200318_div_capa.jpg'),
              DecoratedBox(
                decoration: BoxDecoration (color: Color.fromARGB(255, 241, 237, 237)),
                child: Padding (
                  padding: EdgeInsets.all(18),
                  child: Text("A vinícola está localizada no campus da Universidade Estadual de Campinas - Unicamp", style: TextStyle(fontSize: 15, color:Colors.black), ),
                )
              ),              
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Image.network('https://www.unicamp.br/unicamp/sites/default/files/2020-03/atu_fca_20200318_div_capa.jpg'),
                  DecoratedBox(
                  decoration: BoxDecoration (color: Colors.deepPurple),
                  child: Padding (
                  padding: EdgeInsets.all(10),
                  
                  child: Text("a", style: TextStyle(fontSize: 60),),
                )
              ),
                  SizedBox(width: 10,),
                  DecoratedBox(
                  decoration: BoxDecoration (color: Color.fromARGB(255, 91, 211, 141)),
                  child: Padding (
                  padding: EdgeInsets.all(10),                 
                  child: Text("aula", style: TextStyle(fontSize: 60),),
                )
              ),
                  SizedBox(width: 10,),
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
              DecoratedBox(
                decoration: BoxDecoration (color: Color.fromARGB(255, 158, 30, 141)),
                child: Padding (
                  padding: EdgeInsets.all(20),
                  child: Text("Tânia", style: TextStyle(fontSize: 30),),
                ) 
              ),
             SizedBox(height: 20,),
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