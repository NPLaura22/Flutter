// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MyLista extends StatefulWidget {
  const MyLista({super.key});

  @override
  State<MyLista> createState() => _MyListaState();
}

class _MyListaState extends State<MyLista> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("LOVE")),
      // ignore: prefer_const_literals_to_create_immutables
      body: ListView(children: [ //listview é o todo
        ListTile( //listtile é subdo view
          title: Text("Love is"),
          subtitle: Text("a purple flower"),
          leading: Icon(Icons.heat_pump_rounded),
          trailing:Text("<3") , //add info lado direito
        ),
        ListTile(
          title: Text("that grows in"),
          subtitle: Text("idiots heart <3"),
          leading: Icon(Icons.heart_broken),
          trailing:Text(":)") , 
        ),
         ListTile(
          title: Text("Have u ever"),
          subtitle: Text("loved someone?"),
          leading: Icon(Icons.heart_broken_outlined),
          trailing:Text(":(") , 
        )
      ],),
    );
  }
}