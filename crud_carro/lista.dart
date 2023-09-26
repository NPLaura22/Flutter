// ignore_for_file: prefer_const_constructors, no_leading_underscores_for_local_identifiers, prefer_const_literals_to_create_immutables, unused_local_variable

import 'package:atv_carro/altera.dart';
import 'package:atv_carro/carro_class.dart';
import 'package:atv_carro/carro_rep.dart';
import 'package:flutter/material.dart';

class MyLista extends StatefulWidget {
  const MyLista({super.key});

  @override
  State<MyLista> createState() => _MyListaState();
}

class _MyListaState extends State<MyLista> {
List<Carro1> lista = [];

  //obtem lista de CarroRep (get)
  List <Carro1> listaCarros = CarroRep.getListaCarros;

  //faz uma cópia da lista original de carros que vem de Repository
  List<Carro1> listaBusca = [];

  //quando deleta carro da lista original, precisa manter o nome digitado no campo de busca
  String marcaBusca="";
  @override
  void initState() {
    //cópia da lista original
    listaBusca = List.from(listaCarros);
    super.initState();
  }

  void atualizaLista (String marca)
  {
    listaBusca = List.from(listaCarros);
    setState(() {
      //seleciona somente os alunos com nome igual ao da busca e grava na cópia
      listaBusca = listaCarros.where((element) => (
        element.marca.toLowerCase().contains(marca.toLowerCase()))).toList();
    });
  }

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
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
          children: [
             SizedBox(width:350, height:30, 
              child: TextField (
                style: TextStyle(fontSize: 15, color: Colors.white ),
                decoration:  InputDecoration (
                  labelText: 'Montadora',
                  border: OutlineInputBorder(),
                  filled: true,
                  fillColor: Colors.yellow,  
                  labelStyle: TextStyle(color: Colors.white),                
                  prefixIcon: Icon(Icons.search, color: Colors.black,),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.yellow), // Cor da borda (qnd ta em foco)
                  ),
                ),
                onChanged: (String marca) {
                  //guarda string do campo de busca caso seja necessário usar na exclusão
                  marcaBusca = marca;
                  atualizaLista(marcaBusca);
                },
            )
            ),
        ]
          ),
          SizedBox(height: 30),
        
      ListView.separated(
      shrinkWrap: true, //ajusta a tela para a quantidade de itens do listview | poderia ser sizedbox com tamanho fixo
      separatorBuilder: (BuildContext context, int index) =>Divider(thickness:4),
      itemCount: listaBusca.length,//importante
      itemBuilder: (BuildContext context, int index) {  
        return ListTile(
          
          title: Text(listaBusca[index].marca),
          subtitle: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(listaBusca[index].cod.toString()),
              SizedBox(width: 10,),
              Text('- ${listaBusca[index].ano.toString()}')
            ],
          ),
          leading: CircleAvatar(
            child: Text(listaBusca[index].marca[0]),
            backgroundColor: Colors.pink,
            ),
          trailing: SizedBox (
            width: 70,
            child: Row (children: [
              Expanded(child: IconButton(onPressed: () {
                Navigator.push(context,
                MaterialPageRoute(builder: (context) {
                  return AlteraCarro(listaBusca[index], index);
                },));
                
              }, icon: Icon(Icons.edit)),),
              Expanded(child: IconButton(onPressed: () {
                Carro1 car = listaBusca[index];
                CarroRep.remover(car);
                setState(() { //para redesenhar a tela com os novos estados dos widgets
                 atualizaLista(marcaBusca);
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