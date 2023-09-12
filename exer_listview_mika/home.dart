// ignore_for_file: unused_field



import 'package:ex_mod/lista.dart';
import 'package:ex_mod/produto.dart';
import 'package:flutter/material.dart';


import 'cliente.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
    int _indice = 0;
  List<Widget> _telas = [
    Cliente(),
    Produto(),
    MyLista()
];
void _itemClicado(int index){
  setState(() {
    _indice=index;  
  });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Cadastro"),
      actions: [
        
        IconButton(onPressed: (){
          Navigator.pushNamed(context,'/cliente');
        }, icon: Icon(Icons.person),),
        /*IconButton(onPressed: (){
          Navigator.pushNamed(context,'/produto');
        }, icon: Icon(Icons.shopping_bag),),*/
        IconButton(onPressed: (){
           Navigator.pushNamed(context,'/lista');
        }
        , icon: Icon(Icons.list_alt_rounded))
      ],
      ),

      

    );
  }
}