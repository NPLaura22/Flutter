// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class My_Contador extends StatefulWidget {
  const My_Contador({super.key});

  @override
  State<My_Contador> createState() => _My_ContadorState();
}


class _My_ContadorState extends State<My_Contador> {
  @override

  void _increment(){
    setState(() {
      count++;
    });
  }

  void _decrement(){
    setState(() {
      count--;
    });
  }

  void mudarEstado () {
    if ( count == 0) {
      linkImagem = 'https://cdn-icons-png.flaticon.com/512/0/6.png';
    }
    else if ((count >0) && (count <=2)) {      
      linkImagem = 'https://cdn-icons-png.flaticon.com/512/65/65667.png';
    }
    else if ((count >2) && (count <=4)) {      
      linkImagem = 'https://cdn-icons-png.flaticon.com/512/83/83484.png';
    }
    else if ((count >4) && (count <=6)) {      
      linkImagem = 'https://cdn-icons-png.flaticon.com/512/719/719926.png';
    }
    else if ((count >6) && (count <=8)) {      
      linkImagem = 'https://cdn-icons-png.flaticon.com/512/38/38544.png';
    }
  }

  int count = 0;
  String linkImagem = 'https://cdn-icons-png.flaticon.com/512/0/6.png';

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column (
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 90,
              child: Image.network(linkImagem)
            ),
            SizedBox(height: 10,),
            Text("Hoje o dia pede um vinho"),
            SizedBox(height: 10,),

            Row (
              mainAxisAlignment: MainAxisAlignment.center,
              children:[ 
              FloatingActionButton(
              onPressed: () {
                _decrement();
              }, 
              child: Text("-"),
             ),

            Text("count"),

             FloatingActionButton(
              onPressed: () {
                _increment();
              }, 
              child: Text("+"),
             ),], 
            ),
            

          ],
        ),
      ),
    );
  }
  
}