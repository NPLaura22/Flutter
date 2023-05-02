import 'package:flutter/material.dart';

//stf

class My_lamp extends StatefulWidget {  
  const My_lamp({super.key});

  @override
  State<My_lamp> createState() => _My_lampState();
}

class _My_lampState extends State<My_lamp> {
  @override

  //atributos --> para nao deixar o valor fixo em imagem
  String linkImagem = 'https://i.stack.imgur.com/b983w.jpg'; 
  String msg = "Desligado";
  String msg2 = "Ligado";

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column (
          children: [
            Image.network(linkImagem),
            Text(msg),
            ElevatedButton(
              onPressed: () { //onPressed: evento com  mudanca de estado, uma funcao
                mudarEstado();
                setState(() {
                  
                });
              }, 
              child: Text("Mudar Estado"), //child: texto que vai no botao; 
              ) 
          ],
        ),
      ),
    );
  }
  void mudarEstado () {
    if (msg == "Desligado") {
      msg = "Ligado";
      linkImagem = 'https://i.stack.imgur.com/ybxlO.jpg';
    }
    else {
      msg = "Desligado";
      linkImagem = 'https://i.stack.imgur.com/b983w.jpg';
    }

  }
}

