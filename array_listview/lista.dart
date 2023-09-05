// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

import 'aluno.dart';

class MyLista extends StatefulWidget {
  const MyLista({super.key});

  @override
  State<MyLista> createState() => _MyListaState();
}

class _MyListaState extends State<MyLista> {
  //ARRAYLIST
  List<Aluno> lista = [];

  @override
  Widget build(BuildContext context) {
    
    //alunos fixos
              //DEVE PUXAR DADOS DO REPOSITORY
    lista=[];
    lista.add(Aluno(123, "helena"));
    lista.add(Aluno(321, "matheus"));
    lista.add(Aluno(231, "guilherme"));
    lista.add(Aluno(180, "laura"));

    return Scaffold(
      appBar: AppBar(title: Text("Cantores")),
      body: ListView.separated(
        separatorBuilder: (BuildContext context, int index) => Divider(thickness:2), 
        itemCount: lista.length,
        itemBuilder: (BuildContext context, int index) {  
          return ListTile(
            title: Text(lista[index].nome), //get do nome
            subtitle: Text(lista[index].ra.toString()),
            leading: (Icon(Icons.music_note)),
            trailing: (Icon(Icons.perm_camera_mic)),
          );
        }, 

      ),
    );
  }
}