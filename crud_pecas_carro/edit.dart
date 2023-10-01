// ignore_for_file: unused_field, prefer_const_constructors, must_be_immutable, dead_code

import 'package:crud_pecas_carro/peca_class.dart';
import 'package:crud_pecas_carro/peca_rep.dart';
import 'package:flutter/material.dart';

class EditPeca extends StatefulWidget {

  Peca1 pec;
  int indice;

  EditPeca(this.pec, this.indice,{super.key});

  @override
  State<EditPeca> createState() => _EditPecaState();
}

class _EditPecaState extends State<EditPeca> {

  final campoCod = TextEditingController();
  final campoQtd = TextEditingController();
  final campoPeca = TextEditingController();
  final campoValor = TextEditingController();

  final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
  final FocusNode focoCod = FocusNode();
  
  List ListaPecas = PecaRep.getListaPecas;

  @override
  Widget build(BuildContext context) {

    inicializa();

    return Scaffold(
      appBar: (AppBar(
        title: Text("Edição - Peça"),
        backgroundColor: Colors.purple,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: (){
          Navigator.pushNamed(context, '/');
        }, icon: Icon(Icons.person),),

        IconButton(onPressed: (){
          Navigator.pushNamed(context, '/lista');
        }, icon: Icon(Icons.list),),

        IconButton(onPressed: (){
          Navigator.pushNamed(context, '/peca');
        }, icon: Icon(Icons.miscellaneous_services_rounded),),
        ],
      )),
      
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    controller: campoCod,
                    keyboardType: TextInputType.number,
                    /*inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.digitsOnly
                    ],*/
                    focusNode: focoCod,
                    style: TextStyle(fontSize: 15),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelStyle: TextStyle(
                        color: Colors.black,
                      ),
                      labelText: 'CÓDIGO - PEÇA',
                      filled: true,
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)
                      ),
                    ),     

                    validator:(value){
                        if (value!.isEmpty){
                          return 'Campo CÓDIGO - PEÇA não pode ser vazio';
                        } 
                        return null;
                      },      
                  ),

                  SizedBox(height: 30),

                  TextFormField (
                      controller: campoPeca,
                      style: TextStyle(fontSize: 15),
                      decoration:  InputDecoration (                        
                        border: OutlineInputBorder(),
                        labelStyle: TextStyle(
                        color: Colors.black,
                      ),
                      labelText: 'NOME - PEÇA',
                        filled: true,                        
                        fillColor: Colors.purple,
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white), // Cor da borda (foco)
                        ),
                      ),
                      validator: (value) {
                        if (value!.isEmpty){
                          return 'Campo NOME - PEÇA não pode ser vazio!';
                        }
                        return null;
                      }, 
                    ),

                    SizedBox(height: 30),

                  TextFormField (
                      controller: campoValor,
                      style: TextStyle(fontSize: 15),
                      decoration:  InputDecoration (
                        labelText: 'VALOR - PEÇA',
                        border: OutlineInputBorder(),
                        filled: true,
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white), // Cor da borda (foco)
                        ),
                      ),
                      validator: (value) {
                        if (value!.isEmpty){
                          return 'Campo VALOR - PEÇA não pode ser vazio!';
                        }
                        return null;
                      }, 
                    ),

                    SizedBox(height: 30),

                  TextFormField (
                      controller: campoQtd,
                      style: TextStyle(fontSize: 15),
                      decoration:  InputDecoration (
                        labelText: 'QUANTIDADE - PEÇA',
                        border: OutlineInputBorder(),
                        filled: true,
                        fillColor: Colors.purple,
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white), // Cor da borda (foco)
                        ),
                      ),
                      validator: (value) {
                        if (value!.isEmpty){
                          return 'Campo QUANTIDADE - PEÇA não pode ser vazio!';
                        }
                        return null;
                      }, 
                    ),
                ],),
            ),

            SizedBox(height: 30),

            Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: (){
                 if (_formKey.currentState!.validate())
                 {
                  int cod = int.parse(campoCod.text);
                  int qtd = int.parse(campoQtd.text);
                  String peca = campoPeca.text;
                  double valor = double.parse(campoValor.text);
                  
                  Peca1 P = new Peca1(cod,qtd,peca,valor);
                  ListaPecas[widget.indice]= P;
                  mensagem();
                 }
                },
                child: Text('Editar', style: TextStyle(fontSize: 15),),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.purple), 
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.white), 
                ),
              ),
              
              SizedBox(width: 20),
              ElevatedButton(onPressed: (){
                Navigator.pushNamed(context, '/lista');
                },
                child: Text('Voltar',style: TextStyle(fontSize: 15),),

                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.purple), 
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.white), 
                ),
              ),
            ],
          ),
          
          SizedBox(height: 30),
          ],
        ),
      ),
    );
  }

   void inicializa()
  {
    campoCod.text = widget.pec.cod.toString();
    campoQtd.text = widget.pec.qtd.toString();
    campoPeca.text = widget.pec.peca;
    campoValor.text = widget.pec.valor.toString();
    
  }

   void mensagem ()
  {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar (content:Text('Edição de peça realizada com sucesso!')));
  }
}