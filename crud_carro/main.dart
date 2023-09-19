import 'package:atv_carro/carro.dart';
import 'package:atv_carro/lista.dart';
import 'package:atv_carro/login.dart';
//import 'package:ex_mod/produto.dart';
import 'package:flutter/material.dart';

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
        '/':(context) => Login(),
        '/home':(context) => Home(),
        '/carro':(context) => Carro(),
        '/lista':(context)=> MyLista(),
      },
    );
  }
}