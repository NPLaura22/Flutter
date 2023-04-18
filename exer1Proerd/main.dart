//import 'dart:html';

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exercicio1',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: Scaffold(
        appBar: AppBar (
          title: Text("Bem-vindo ao Proerd"),
          backgroundColor: Colors.cyan,
          centerTitle: true,
        ),
        body: Center (
          child: Column (
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: 300,
                child: Image.network('https://www.pmpr.pr.gov.br/sites/default/arquivos_restritos/files/imagem/2021-10/img_9867.jpg'),
              ),
               DecoratedBox(
                  decoration: BoxDecoration (),
                  child: Padding (
                    padding: EdgeInsets.only(left: 50, right: 50),
                    child: Text("Bem-vindos ao Proerd, criado para avisar a população sobre o uso de drogas", style: TextStyle(fontSize: 10), ),
                )
               )
            ],
            
            
          )
          
        ),
        
      ),
    );
    
  }
}


  
