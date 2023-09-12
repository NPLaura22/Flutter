import 'package:flutter/material.dart';


class Bemvindo extends StatefulWidget {
  const Bemvindo({super.key});

  @override
  State<Bemvindo> createState() => _BemvindoState();
}

class _BemvindoState extends State<Bemvindo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(title: Text("Cadastro L&L"),
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