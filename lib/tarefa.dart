import 'package:flutter/material.dart';

class Tarefa extends StatefulWidget {
  @override
  _Tarefa createState() => _Tarefa();
}

class _Tarefa extends State<Tarefa> {
  List<String> totalCampos = [];
  String novoCampo = "";

  void addTodo() {
    if (novoCampo.isNotEmpty) {
      setState(() {
        totalCampos.add(novoCampo);
        novoCampo = ""; 
      });
    } else {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Erro'),
            content: Text('Campo "tarefas" é obrigatório'),
            actions: <Widget>[
              TextButton(
                child: Text('OK'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    }
  }

  void removeTodo(int index) {
    setState(() {
      totalCampos.removeAt(index);
    });
  }

  void clearList() {
    setState(() {
      totalCampos.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Tarefas'),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: TextField(
                    onChanged: (text) {
                      setState(() {
                        novoCampo = text;
                      });
                    },
                    onSubmitted: (text) {
                      addTodo();
                    },
                    decoration: InputDecoration(
                      hintText: 'Adicionar tarefa...',
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.add),
                  onPressed: addTodo,
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: totalCampos.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text(totalCampos[index]),
                  trailing: IconButton(
                    icon: Icon(Icons.delete),
                    onPressed: () {
                      removeTodo(index);
                    },
                  ),
                );
              },
            ),
          ),
          ElevatedButton(
            onPressed: clearList,
            child: Text('Limpar l ista'),
          ),
        ],
      ),
    );
  }
}