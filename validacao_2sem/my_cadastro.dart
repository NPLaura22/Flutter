import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyCadastro extends StatefulWidget {
  const MyCadastro({super.key});

  @override
  State<MyCadastro> createState() => _MyCadastroState();
}

class _MyCadastroState extends State<MyCadastro> {

  //VARIAVEIS
  String nome = "";
  int ra = 0;

  //INSTANCIAS
  TextEditingController campoRa = TextEditingController();
  TextEditingController campoNome = TextEditingController();

  //GLOBALKEY
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Column(children: [
        SizedBox(
          height: 50,
        ),
        Form(
          key: formKey,
          child: Column(children: [ 
            TextFormField( //para ter validação, diferente do TextField
              controller: campoRa,
              style: TextStyle(fontSize:20),
              decoration: InputDecoration (
                labelText: 'Digite o ra',
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                filled: true,
                fillColor: const Color.fromARGB(255, 87, 57, 92),
              ),
                //COD PARA ACEITAR APENAS NUMEROS QUANDO DIGITAR
              keyboardType: TextInputType.number,
              inputFormatters: <TextInputFormatter>[FilteringTextInputFormatter.digitsOnly],

              
              validator: (value) { //validator retorna string ou null 
                if (value!.isEmpty) { //! é usado para nao dar erro no isEmpty, para certificar que nao é nulo 
                  return ("O RA não pode ser vazio");
                } else {
                  if (int.parse(campoRa.text) < 10) {  //campoRa vem como sting, converto para int e ai faz
                    return ("O RA deve ser maior que 10");
                  }
                }
                return null;
              },
            ), 
            SizedBox(
              height: 10,
            ),
            TextFormField(
              controller: campoNome,
              style: TextStyle(fontSize:20),
              decoration: InputDecoration (
                labelText: 'Digite o ra',
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                filled: true,
                fillColor: Color.fromARGB(255, 255, 255, 255),
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return ("O nome não pode ser vazio");
                }
                else {
                  if (campoNome.text.length < 3) {
                    return ("O nome precisa ter mais que 3 caracteres");
                  }
                }
                return null;
              },
            )
          ]),
        ),
        ElevatedButton(
          onPressed: () {
            if (formKey.currentState!.validate())  //vai verificar se passou ou nao pela verificacao; SEM ISSO NAO ACONTECE  VALIDACAO
            {
              mostrarMsgSucesso();
              ra = int.parse(campoRa.text);//ra recebe o controlador 
              nome = campoNome.text;
              setState(() {
              
              });
            }            
        }, child: Text("Cadastrar")),
        Text("Valores digitados: $ra, $nome"),


      ],)),
    );
  }

  //METODO
  void mostrarMsgSucesso () {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Aluno cadastrado com sucesso!!'))
    );
  }
}
