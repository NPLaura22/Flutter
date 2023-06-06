// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {

  int _indice = 0;

  //MÉTODO
  void _itemClicado(int index) { //index é a var que vai vir do bottomnavigation (0,1...)
    setState(() {
      _indice = index; //indice recebe index q vem do bottomnav, vai jogar no atributo indice e mudar a pagina 
    });
    switch (index) {
      case 0: Navigator.pushNamed(context, '/calc'); //definimos as rotas na main
      break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        actions: [ //propriedade da appbar abre um vetor
          IconButton(onPressed: () {
            Navigator.pushNamed(context, '/calc');
          }, 
          icon: Icon(Icons.plus_one)),
        ],      
      ),
      bottomNavigationBar: BottomNavigationBar(
        // ignore: prefer_const_literals_to_create_immutables
        currentIndex: _indice,
        onTap: _itemClicado, //nao precisa passar os parametros
        // ignore: prefer_const_literals_to_create_immutables
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.plus_one),
            label: "Calculadora",
            ),
        ]),
    );
    
  }
}