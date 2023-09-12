import 'package:ex_mod/carro_class.dart';
import 'package:ex_mod/carro_rep.dart';
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
  TextEditingController campoCod = TextEditingController();
  TextEditingController campoMarca = TextEditingController();
  CarroRep listCarros = CarroRep();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(title: Text("Carro"),
      actions: [
        IconButton(onPressed: (){
          Navigator.pushNamed(context,'/bemvindo');
        }, icon: Icon(Icons.home),),
        IconButton(onPressed: (){
          Navigator.pushNamed(context,'/carro');
        }, icon: Icon(Icons.person),),
      IconButton(onPressed: (){
           Navigator.pushNamed(context,'/lista');
        }
        , icon: Icon(Icons.list_alt_rounded))
        /*IconButton(onPressed: (){
          Navigator.pushNamed(context,'/produto');
        }, icon: Icon(Icons.shopping_bag),),*/

        
      ],
      ),
      body: Container(
       
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: TextField(
              controller: campoMarca,
              decoration: InputDecoration(
              border: UnderlineInputBorder(),
              labelText: 'Marca',
              labelStyle: MaterialStateTextStyle.resolveWith(
          (Set<MaterialState> states) {
            final Color color = states.contains(MaterialState.error)
                ? Theme.of(context).colorScheme.error
                : Colors.black;
            return TextStyle(color: color, letterSpacing: 1.3);
          },
        ),
        //hintText: 'Nome do Cliente',
            ),
              ),
            ),
      Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: TextField(
              controller: campoCod,
              decoration: InputDecoration(
              border: UnderlineInputBorder(),
              labelText: 'Código',
              labelStyle: MaterialStateTextStyle.resolveWith(
          (Set<MaterialState> states) {
            final Color color = states.contains(MaterialState.error)
                ? Theme.of(context).colorScheme.error
                : Color.fromARGB(255, 85, 25, 70);
            return TextStyle(color: color, letterSpacing: 1.3);
          },
        ),
       
            ),
              ),
              
            ),
             ElevatedButton
          (onPressed: (){
            cod = int.parse(campoCod.text);
            marca = campoMarca.text;
          Carro1 cliente = Carro1(cod, marca);
          listCarros.adicionar(cliente);
          //listClientes.imprimir();
          setState(() {});

          }, child: Text("Cadastrar"),
          ),
            
        
      ],),),
          
        
         
        
    
    );
  }
}