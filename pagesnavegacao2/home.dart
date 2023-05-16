// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:paginas/person.dart';
import 'bag.dart';
import 'favorite.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {

  //ATRIBUTOS
  int _indice = 0;

  //ARRAY COM AS PAGINAS
  // ignore: prefer_final_fields
  List<Widget> _telas = [
    Person(), //primeira posicao (0) tem a ainstancia person 
    Bag(),
    Favorite(),
  ];

  //MÉTODO
  void _itemClicado(int index) { //index é a var que vai vir do bottomnavigation (0,1...)
    setState(() {
      _indice = index; //indice recebe index q vem do bottomnav, vai jogar no atributo indice e mudar a pagina 
    });
    /*switch (index) {
      case 0: Navigator.pushNamed(context, '/person'); //definimos as rotas na main
      break;
      case 1: Navigator.pushNamed(context, '/bag');
      break;
      case 2: Navigator.pushNamed(context, '/favorite');
      break;
    }*/
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        actions: [ //propriedade da appbar abre um vetor
          IconButton(onPressed: () {
            Navigator.pushNamed(context, '/person');
          }, 
          icon: Icon(Icons.person)),

          IconButton(onPressed: () {
            Navigator.pushNamed(context, '/bag');     
          }, 
          icon: Icon(Icons.shopping_bag)),

          IconButton(onPressed: () {
            Navigator.pushNamed(context, '/favorite');
          }, 
          icon: Icon(Icons.favorite)),
        ],      
      ),
      body: _telas[_indice], //pega indice q veio do bottom pelo currenteindex, passa pelo array e pelo array ve oq cjhama, se for 0 chama person etc. propriedade body chama uma das instancias 
      bottomNavigationBar: BottomNavigationBar(
        // ignore: prefer_const_literals_to_create_immutables
        currentIndex: _indice,
        onTap: _itemClicado, //nao precisa passar os parametros
        // ignore: prefer_const_literals_to_create_immutables
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Person",
            ),
            BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag),
            label: "Bag",
            ),
            BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "Favorite",
            ),
              //pega o indice correspondnte ao indice (0,1,2,3...)
            
        ]),
      );
  }
}