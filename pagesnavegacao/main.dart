import 'package:flutter/material.dart';
import 'package:paginas/favorite.dart';
import 'package:paginas/home.dart';
import 'package:paginas/person.dart';

import 'bag.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //para nao aparecer o ngc
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      //home: const MyHome(),
      routes: {
        '/' : (context) => MyHome(), 
        '/person' : (context) => Person(), //nome da clasee
        '/bag' : (context) => Bag(),
        '/favorite' :(context) => Favorite()       

      },
    );
  }
}

