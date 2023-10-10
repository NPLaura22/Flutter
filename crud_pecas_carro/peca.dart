// ignore_for_file: prefer_const_constructors, unused_local_variable
import 'package:crud_pecas_carro/peca_class.dart';
import 'package:crud_pecas_carro/peca_rep.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
//import 'package:image_picker/image_picker.dart';


class Peca extends StatefulWidget {
  const Peca({super.key});

  @override
  State<Peca> createState() => _PecaState();
}

class _PecaState extends State<Peca> {

  int cod = 0; //CÓDIGO DA PEÇA
  int qtd = 0; //QUANTIDADE NO ESTOQUE
  String peca = ""; //NOME DA PEÇA
  double valor = 0; //VALOR DA PEÇA
  //String imagePath; // Caminho da imagem selecionada 


  TextEditingController campoCod = TextEditingController();  
  TextEditingController campoPeca = TextEditingController();
  TextEditingController campoValor = TextEditingController();
  TextEditingController campoQtd = TextEditingController();
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  PecaRep listPecas = PecaRep(); //atribuindo à classe PecaRep a instancia listPecas

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Cadastro de Peças Automotivas:"),
      automaticallyImplyLeading: false,
      backgroundColor: Colors.purple,
      actions: [
        IconButton(onPressed: (){
          Navigator.pushNamed(context, '/');
        }, icon: Icon(Icons.person),),

        IconButton(onPressed: (){
          Navigator.pushNamed(context, '/lista');
        }, icon: Icon(Icons.list),),
      ],
      ),

      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage('https://i.pinimg.com/564x/e2/92/4b/e2924bd334121e31719860e83df8479c.jpg'),
            fit: BoxFit.cover,
          ),
        ),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:8, vertical: 16),
              child: TextField(   
                inputFormatters: [FilteringTextInputFormatter.digitsOnly], 
                keyboardType: TextInputType.number,            
                controller: campoCod,
                style: TextStyle(
                  color: Colors.purple, //COR TEXTO DIGITADO
                ),
                decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Código - Peça', 
                  labelStyle: TextStyle(
                    color: Color.fromARGB(255, 34, 14, 51),
                  ),
                  filled: true,
                  fillColor: Color.fromARGB(218, 231, 221, 221),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.purple), //COR BORDA NO FOCO
                  ),
                  
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal:8, vertical: 16),
              child: TextField(
                controller: campoPeca,
                style: TextStyle(
                  color: Colors.purple, //COR TEXTO DIGITADO
                ),
                decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Nome - Peça', 
                  labelStyle: TextStyle(
                    color: Color.fromARGB(255, 34, 14, 51),
                  ),
                  filled: true,
                  fillColor: Color.fromARGB(218, 231, 221, 221),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.purple), //COR BORDA NO FOCO
                  )
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal:8, vertical: 16),
              child: TextField(
                inputFormatters: [FilteringTextInputFormatter.digitsOnly], 
                keyboardType: TextInputType.number,
                controller: campoValor,
                style: TextStyle(
                  color: Colors.purple, //COR TEXTO DIGITADO
                ),
                decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Valor - Peça', 
                  labelStyle: TextStyle(
                    color: Color.fromARGB(255, 34, 14, 51),
                  ),
                  filled: true,
                  fillColor: Color.fromARGB(218, 231, 221, 221),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.purple), //COR BORDA NO FOCO
                  )
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal:8, vertical: 16),
              child: TextField(
                inputFormatters: [FilteringTextInputFormatter.digitsOnly], 
                keyboardType: TextInputType.number,
                controller: campoQtd,
                style: TextStyle(
                  color: Colors.purple, //COR TEXTO DIGITADO
                ),
                decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Quantidade - Peça', 
                  labelStyle: TextStyle(
                    color: Color.fromARGB(255, 34, 14, 51),
                  ),
                  filled: true,
                  fillColor: Color.fromARGB(218, 231, 221, 221),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.purple), //COR BORDA NO FOCO
                  )
                ),
              ),
            ),

            

            ElevatedButton (
              onPressed: () {
                String codText = campoCod.text;
                String pecaText = campoPeca.text;
                String valorText = campoValor.text;
                String qtdText = campoQtd.text;

                if (codText.isEmpty || pecaText.isEmpty || valorText.isEmpty || qtdText.isEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Todos os campos são obrigatórios!'),
                    ),
                  );
                } else if (codText.length <2 || codText.length >5) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Código deve ter no mínimo 2 caracteres e no máximo 5'),
                        ),
                    );
                } else if (pecaText.length < 5) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Nome da Peça dee ter no mínimo 2 caracteres!'),
                      ),
                    );
                }               
                else {
                    cod = int.parse(campoCod.text);
                    qtd = int.parse(campoQtd.text);
                    peca = campoPeca.text;
                    valor = double.parse(campoValor.text);

                  Peca1 pecas = Peca1(cod, qtd, peca, valor); //'peca1' nome var usado para novo objeto
                listPecas.adicionar(pecas);

                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                  content: Text('Peça cadastrada!'),
                  ),
                );  
                  setState(() {});
                }  
                          
          }, 
            style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.purple), 
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