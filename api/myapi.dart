import 'package:api/tarefa.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class MyApi extends StatefulWidget {
  const MyApi({super.key});

  @override
  State<MyApi> createState() => _MyApiState();
}

class _MyApiState extends State<MyApi> {

  //VARIAVEIS
  int userId = 0;
  int taskId = 0;
  String title = "";
  bool completed = false;
  Tarefa minhaTarefa = Tarefa();

  //FUNCAO 'obtertarefa'
  Future <void> obterTarefa() async {
    final url = Uri.parse('https://jsonplaceholder.typicode.com/todos/19');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      //Successful API call
      final data = response.body;
      Map<String, dynamic> tarefa = jsonDecode(data);
      /*print(tarefa);
      userId = (tarefa['userId']);
      taskId = (tarefa['id']);
      title = (tarefa['title']);
      completed = (tarefa['completed']);*/
      minhaTarefa = Tarefa.fromJson(tarefa);
      setState(() { //setstate: atualizacao da info
        
      });
    } else {
      //API call failed 
      print('Request failed with status: ${response.statusCode}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Column(children: [
        ElevatedButton(onPressed: () {
          obterTarefa();
        }, child: Text("Buscar Tarefa Específica")),
        Text("ID do usuário: ${minhaTarefa.userId}"),
        Text("ID da tarefa: ${minhaTarefa.taskId}"),
        Text("Título da tarefa: ${minhaTarefa.title}"),
        Text("Tarefa completa? ${minhaTarefa.completed}"),
      ],)),
    );
  }
}