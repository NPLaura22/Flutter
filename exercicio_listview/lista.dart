

//import 'package:ex_mod/cliente.dart';
import 'package:ex_mod/carro_class.dart';
import 'package:ex_mod/carro_rep.dart';
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
      appBar: AppBar(title: Text("Cadastro de Carros")),
    body: Column(children: [
      ListView.separated(
        shrinkWrap: true,
      separatorBuilder: (BuildContext context, int index) =>Divider(thickness:4),
      itemCount: _listaCarros.length,//importante
      itemBuilder: (BuildContext context, int index) {  
        return ListTile(

          title: Text(_listaCarros[index].marca),
          subtitle: Text(_listaCarros[index].cod.toString()),
          leading: CircleAvatar(child: Text(_listaCarros[index].marca[0])),
          trailing: Text("C"),
        );
      }, 
      /*
      classe aluno
      repository
      botao listar alunos list view
      os dados vao para repository e preciso abrir o list view 
      metodo q retorna meu arraylist e instanciar 
      chamar o metodo get para retornar o array
      como resolve?
      a gente deixa nosso arrya list como static
      dicas: fazer gett
      */ 

    ),

    Divider(thickness: 2,),
    ElevatedButton(onPressed: () {
      Navigator.pushNamed(context, '/home');
    },
    child: Text("Voltar"),
    )
    ]
    ),
    );
  }
}