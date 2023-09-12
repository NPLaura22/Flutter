import 'package:ex_mod/cliente_class.dart';
import 'package:ex_mod/cliente_rep.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Cliente extends StatefulWidget {
  const Cliente({super.key});

  @override
  State<Cliente> createState() => _ClienteState();
}

class _ClienteState extends State<Cliente> {
  int cpf = 0;
  String nome = "";
  TextEditingController campoCPF = TextEditingController();
  TextEditingController campoNome = TextEditingController();
  ClienteRep listClientes = ClienteRep();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(title: Text("Cliente"),
      actions: [
        IconButton(onPressed: (){
          Navigator.pushNamed(context,'/bemvindo');
        }, icon: Icon(Icons.home),),
        IconButton(onPressed: (){
          Navigator.pushNamed(context,'/cliente');
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
              controller: campoNome,
              decoration: InputDecoration(
              border: UnderlineInputBorder(),
              labelText: 'Nome',
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
              controller: campoCPF,
              decoration: InputDecoration(
              border: UnderlineInputBorder(),
              labelText: 'CPF',
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
            cpf = int.parse(campoCPF.text);
            nome = campoNome.text;
          Cliente1 cliente = Cliente1(cpf, nome);
          listClientes.adicionar(cliente);
          //listClientes.imprimir();
          setState(() {});

          }, child: Text("Cadastrar"),
          ),
            
        
      ],),),
          
        
         
        
    
    );
  }
}