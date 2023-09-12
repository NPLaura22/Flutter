import 'package:ex_mod/produto_class.dart';
import 'package:ex_mod/produto_rep.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Produto extends StatefulWidget {
  const Produto({super.key});

  @override
  State<Produto> createState() => _ProdutoState();
}

class _ProdutoState extends State<Produto> {
  double preco = 0;
  String nome = "";
  TextEditingController campoNome = TextEditingController();
  TextEditingController campoPreco = TextEditingController();
  ProdutoRep listaProdutos = ProdutoRep();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(title: Text("Produto"),
      actions: [
        IconButton(onPressed: (){
          Navigator.pushNamed(context,'/bemvindo');
        }, icon: Icon(Icons.home),),
        IconButton(onPressed: (){
          Navigator.pushNamed(context,'/cliente');
        }, icon: Icon(Icons.person),),
        IconButton(onPressed: (){
          Navigator.pushNamed(context,'/produto');
        }, icon: Icon(Icons.shopping_bag),),
        
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
              labelText: 'Descrição',
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
              controller: campoPreco,
              decoration: InputDecoration(
              border: UnderlineInputBorder(),
              labelText: 'Preço',
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
              ElevatedButton(
                onPressed: () {
                  nome = campoNome.text;
                  preco = double.parse(campoPreco.text);
                  Produto1 produto = Produto1(nome, preco);
                  listaProdutos.adicionar(produto);
                  listaProdutos.imprimir();
                  setState(() {
                    
                  });
                },
                child: Text("Cadastrar"))
            
        
      ],),),
      
    );
  }
}
