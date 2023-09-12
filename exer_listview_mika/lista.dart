

//import 'package:ex_mod/cliente.dart';
import 'package:ex_mod/cliente_class.dart';
import 'package:ex_mod/cliente_rep.dart';
import 'package:flutter/material.dart';

class MyLista extends StatefulWidget {
  const MyLista({super.key});

  @override
  State<MyLista> createState() => _MyListaState();
}

class _MyListaState extends State<MyLista> {
List<Cliente1> lista = [];

  @override
  Widget build(BuildContext context) {
    final _listaClientes = ClienteRep.getListaClientes;
   
    return Scaffold(
      appBar: AppBar(title: Text("Exemplo ListView")),
    body: ListView.separated(
      separatorBuilder: (BuildContext context, int index) =>Divider(thickness:4),
      itemCount: _listaClientes.length,//importante
      itemBuilder: (BuildContext context, int index) {  
        return ListTile(

          title: Text(_listaClientes[index].nome),
          subtitle: Text(_listaClientes[index].cpf.toString()),
          leading: CircleAvatar(child: Text(_listaClientes[index].nome[0])),
          trailing: Text("mikaa"),
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

    );
  }
}