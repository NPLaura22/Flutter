// ignore_for_file: prefer_const_constructors, no_leading_underscores_for_local_identifiers

import 'package:atv_listview_carro/carro_class.dart';
import 'package:atv_listview_carro/carro_rep.dart';
import 'package:flutter/material.dart';

class MyLista extends StatefulWidget {
  const MyLista({super.key});

  @override
  State<MyLista> createState() => _MyListaState();
}

class _MyListaState extends State<MyLista> {
List<Carro1> lista = [];

  @override
  Widget build(BuildContext context) {
    final _listaCarros = CarroRep.getListaCarros;
   
    return Scaffold(
      appBar: AppBar(title: Text("Lista de Carros"),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.yellow,
      ),
    body: SingleChildScrollView(
      child: Center(
        child: Column(children: [
      ListView.separated(
        shrinkWrap: true,
      separatorBuilder: (BuildContext context, int index) =>Divider(thickness:4),
      itemCount: _listaCarros.length,//importante
      itemBuilder: (BuildContext context, int index) {  
        return ListTile(

          title: Text(_listaCarros[index].marca),
          subtitle: Text(_listaCarros[index].cod.toString()),
          leading: CircleAvatar(child: Text(_listaCarros[index].marca[0])),
          trailing: SizedBox (
            width: 70,
            child: Row (children: [
              Expanded(child: IconButton(onPressed: () {
                
              }, icon: Icon(Icons.edit)),),
              Expanded(child: IconButton(onPressed: () {
                Carro1 car = _listaCarros[index];
                CarroRep.remover(car);
                setState(() { //para redesenhar a tela com os novos estados dos widgets
                  
                });
              }, icon: Icon(Icons.delete),))
            ]),
          ),
        );
      }, 

    ),

    Divider(thickness: 2,),
    ElevatedButton(onPressed: () {
      Navigator.pushNamed(context, '/home');
    },
     style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.yellow), 
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.white), 
                ),
    child: Text("Voltar"),
    )
    ],
      ),
    )
    
    ),
    );
  }
}