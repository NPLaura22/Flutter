// ignore_for_file: prefer_const_constructors, unnecessary_new, must_be_immutable

import 'package:atv_carro/carro_class.dart';
import 'package:atv_carro/carro_rep.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class AlteraCarro extends StatefulWidget {

  //define objeto que vai receber dados de página anterior
  //e índice do List que vai atualizar
  Carro1 carro;
  int indice;

  //construtor recebe objeto e atribui a aluno - construtor com mesmo nome da classe
  AlteraCarro(this.carro, this.indice, {super.key});

  @override
  State<AlteraCarro> createState() => _AlteraCarroState();
}

class _AlteraCarroState extends State<AlteraCarro> {

  final campoCod = TextEditingController();
  final campoMarca = TextEditingController();
  final campoAno = TextEditingController();
  List ListaCarros = CarroRep.getListaCarros;
  final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
  final FocusNode focoCod = FocusNode();
  @override
  Widget build(BuildContext context) {
    inicializa();
    return  Scaffold(
      appBar: (AppBar(
        title: Text('Alterar dados de carro'),
        backgroundColor: Colors.yellow,
        automaticallyImplyLeading: false,)),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
            Form (
              key: _formKey,
              child: Column(
                children: [
                    TextFormField (
                      controller: campoCod,
                      keyboardType: TextInputType.number,
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.digitsOnly
                      ],
                      focusNode: focoCod,
                      style: TextStyle(fontSize: 15),
                      decoration:  InputDecoration (
                        border: OutlineInputBorder(),
                        labelStyle: TextStyle(
                            color: Colors.black, // Cor do rótulo
                          ),
                        labelText: 'CÓDIGO',
                        filled: true,
                        fillColor: Color.fromARGB(255, 238, 238, 217),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white), // Cor da borda (foco)
                        ),      
                      ),

                      validator:(value){
                        if (value!.isEmpty){
                          return 'O Código não pode ser vazio';
                        } else 
                        {
                            if (int.parse(campoCod.text)<10)
                            {
                              return 'O Código deve ser maior que 10';
                            }
                        }
                        return null;
                      }, 
                    ),
                    SizedBox(height: 30),
                    TextFormField (
                      controller: campoMarca,
                      style: TextStyle(fontSize: 15),
                      decoration:  InputDecoration (
                        labelText: 'MARCA',
                        border: OutlineInputBorder(),
                        filled: true,
                        fillColor: Colors.yellow,
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white), // Cor da borda (foco)
                        ),
                      ),
                      validator: (value) {
                        if (value!.isEmpty){
                          return 'A Marca não pode ser vazio';
                        }
                        else 
                        {
                            if (campoMarca.text.length<3)
                            {
                              return 'A Marca deve ter pelo menos 3 caracteres';
                            }
                        }
                        return null;
                      }, 
                    ),
                    SizedBox(height: 30),
                    TextFormField (
                      controller: campoAno,
                      style: TextStyle(fontSize: 15),
                      decoration:  InputDecoration (
                        labelText: 'ANO',
                        border: OutlineInputBorder(),
                        filled: true,
                        fillColor: Color.fromARGB(255, 238, 238, 217),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white), // Cor da borda (foco)
                        ),
                      ),
                      validator: (value) {
                        if (value!.isEmpty){
                          return 'O Ano não pode ser vazio';
                        }
                        else 
                        {
                            if (campoAno.text.length<4)
                            {
                              return 'O Ano deve ter pelo menos 4 caracteres';
                            }
                        }
                        return null;
                      }, 
                    ),
                ]),
            ),
            SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: (){
                 if (_formKey.currentState!.validate())
                 {
                  int cod = int.parse(campoCod.text);
                  String marca = campoMarca.text;
                  int ano = int.parse(campoAno.text);
                  Carro1 c = new Carro1(cod,marca,ano);
                  ListaCarros[widget.indice]= c;
                  mostrarMsgSucesso();
                 }
                },
                child: Text('Alterar', style: TextStyle(fontSize: 15),),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.yellow), 
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.white), 
                ),
              ),
              
              SizedBox(width: 20),
              ElevatedButton(onPressed: (){
                Navigator.pushNamed(context, '/lista');
                },
                child: Text('Voltar',style: TextStyle(fontSize: 15),),

                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.yellow), 
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.white), 
                ),
              ),
            ],
          ),
          
          SizedBox(height: 30),
    ],),
        )
    );
  }

  void inicializa()
  {
    campoCod.text = widget.carro.cod.toString();
    campoMarca.text = widget.carro.marca;
    campoAno.text = widget.carro.ano.toString();
    
  }

   void mostrarMsgSucesso ()
  {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar (content:Text('Carro alterado com sucesso')));
  }
}