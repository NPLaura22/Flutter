import 'package:ex_mod/lista.dart';
import 'package:ex_mod/login.dart';
//import 'package:ex_mod/produto.dart';
import 'package:flutter/material.dart';

import 'bemvindo.dart';
import 'cliente.dart';
import 'home.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
      
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/':(context) => login(),
        '/home':(context) => Home(),
        '/bemvindo':(context) => Bemvindo(),
        '/cliente':(context) => Cliente(),
        //'/produto':(context) => Produto(), 
        '/lista':(context)=> MyLista(),
      },
    );
  }
}
