// ignore_for_file: prefer_const_constructors

import 'package:atv_carro/carro_class.dart';
import 'package:atv_carro/carro_rep.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Carro extends StatefulWidget {
  const Carro({super.key});

  @override
  State<Carro> createState() => _CarroState();
}

class _CarroState extends State<Carro> {
  int cod = 0;
  String marca = "";
  int ano = 0;
  
  TextEditingController campoCod = TextEditingController();
  TextEditingController campoMarca = TextEditingController();
  TextEditingController campoAno = TextEditingController();
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  CarroRep listCarros = CarroRep();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(title: Text("Cadastro de Carros"),
       automaticallyImplyLeading: false,
       backgroundColor: Colors.yellow,  
      actions: [
        IconButton(onPressed: (){
          Navigator.pushNamed(context,'/');
        }, icon: Icon(Icons.person),),
      IconButton(onPressed: (){
           Navigator.pushNamed(context,'/lista');
        }
        , icon: Icon(Icons.list_alt_sharp))
      ],
      ),
      body: Container(
       decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              'https://i.pinimg.com/originals/7c/2f/81/7c2f814d10a6de6546274f42c8633033.jpg',
            ),
            fit: BoxFit.cover,
          ),
        ),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: TextField(
                controller: campoMarca,
                style: TextStyle(
                  color: Colors.yellow, // Cor do texto digitado
                ),
                decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Montadora',
                  labelStyle: TextStyle(
                    color: Colors.white, // Cor do rótulo
                  ),
                  filled: true,
                  fillColor: Color.fromARGB(218, 231, 221, 221),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.yellow), // Cor da borda (foco)
                  ),
                ),
              ),
        ),

      Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: TextField(
              controller: campoCod,
              style: TextStyle(
                  color: Colors.white, // Cor do texto digitado
              ),
              decoration: InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Código',
                labelStyle: TextStyle(
                    color: Colors.yellow, // Cor do rótulo
                  ),
                  filled: true,
                  fillColor: Color.fromARGB(218, 231, 221, 221),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.yellow), // Cor da borda (foco)
                  ),       
            ),
              ),
              
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: TextField(
              controller: campoAno,
              style: TextStyle(
                  color: Colors.yellow, // Cor do texto digitado
              ),
              decoration: InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Ano de Fabricação',
                labelStyle: TextStyle(
                    color: Colors.white, // Cor do rótulo
                  ),
                  filled: true,
                  fillColor: Color.fromARGB(218, 231, 221, 221),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.yellow), // Cor da borda (foco)
                  ),       
            ),
              ),
              
            ),
             ElevatedButton (
              onPressed: () {
                cod = int.parse(campoCod.text);
                marca = campoMarca.text;
                ano = int.parse(campoAno.text);
                Carro1 carro = Carro1(cod, marca, ano);
                listCarros.adicionar(carro);

                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                  content: Text('Cadastro realizado com sucesso!'),
                  ),
                );
          
                setState(() {});
          }, 
            style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.yellow), 
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.white), 
                ),          
            child: Text("Cadastrar"),
          ),
      ],
      ),
      ),
    );
  }
}