//import 'dart:html';

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'lion.dart';

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
          title: Text("PROERD"),
          backgroundColor: Colors.black,
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Center (
          child: Column (
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: 300,
                child: Image.network('https://www.pmpr.pr.gov.br/sites/default/arquivos_restritos/files/imagem/2021-10/img_9867.jpg'),
              ),
              SizedBox(height: 30,),
               DecoratedBox(
                  decoration: BoxDecoration (),
                  child: Padding (
                    padding: EdgeInsets.only(left: 50, right: 50),
                    child: Text("Bem Vindo ao PROERD - Programa Educacional de Resistência às Drogas e à VIolência", style: TextStyle(fontSize: 20), ),
                )
               ),
               SizedBox(height: 15,),
               DecoratedBox(
                  decoration: BoxDecoration (),
                  child: Padding (
                    padding: EdgeInsets.all(20),
                    child: Text("Aqui você vai encontrar:", style: TextStyle(fontSize: 15),),
                  ),
               ),
               SizedBox(height: 15,),

               /*DecoratedBox( 
                  decoration: BoxDecoration(),
                  child: Padding (
                    padding: EdgeInsets.only(left: 0, right: 350),
                    child: Image.network (
                    'https://media.istockphoto.com/id/456097309/pt/foto/close-up-de-um-le%C3%A3o-rugir-isolado-a-branco.jpg?s=1024x1024&w=is&k=20&c=Il1vU1RN0I2SOfht-UU330c8UaxmGKlwT0_IihdLQKY=',                    
                    alignment: Alignment.centerLeft,
                    width: 50,
                    height: 50,                    
                    fit: BoxFit.contain, // redimensiona a imagem para caber dentro dos limites definido                                      
                  ),
                  ),
                  
               ),*/
               lion('https://media.istockphoto.com/id/456097309/pt/foto/close-up-de-um-le%C3%A3o-rugir-isolado-a-branco.jpg?s=1024x1024&w=is&k=20&c=Il1vU1RN0I2SOfht-UU330c8UaxmGKlwT0_IihdLQKY=',"tetttste",20), 
               lion('https://media.istockphoto.com/id/456097309/pt/foto/close-up-de-um-le%C3%A3o-rugir-isolado-a-branco.jpg?s=1024x1024&w=is&k=20&c=Il1vU1RN0I2SOfht-UU330c8UaxmGKlwT0_IihdLQKY=',"testgte",40),
               lion('https://media.istockphoto.com/id/456097309/pt/foto/close-up-de-um-le%C3%A3o-rugir-isolado-a-branco.jpg?s=1024x1024&w=is&k=20&c=Il1vU1RN0I2SOfht-UU330c8UaxmGKlwT0_IihdLQKY=',"tesdfte",10),
               
               
            ],
            
            
          )
          
        ),
        ),
        
        bottomNavigationBar: BottomAppBar (
          color: const Color.fromARGB(255, 240, 21, 6),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: Icon(Icons.menu),
                onPressed: () { // ação do botão de menu
                },
              ),
              DecoratedBox(
                decoration: BoxDecoration (),
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Text("Venha fazer parte!", style: TextStyle(fontSize: 20, color: Colors.white) ),
                ),
                
              ),
              IconButton(
                icon: Icon(Icons.favorite),
                onPressed: () {},
              ),
            ],
          ),
        ),

      ),
    );
    
  }
}


  
