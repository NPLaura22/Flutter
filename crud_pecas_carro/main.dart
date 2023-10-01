import 'package:crud_pecas_carro/mostruario.dart';
import 'package:crud_pecas_carro/lista.dart';
import 'package:crud_pecas_carro/login.dart';
import 'package:crud_pecas_carro/peca.dart';
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
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
        routes: {
          '/':(context) => Login(),
          '/home': (context) => Home(),
          '/peca': (context) => Peca(),
          '/lista':(context) => Lista(),
        },
    );
  }
}
