// ignore_for_file: unused_element, no_leading_underscores_for_local_identifiers

import 'package:ex_mod/usuario_rep.dart';
import 'package:flutter/material.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  TextEditingController campoNome = TextEditingController();
  TextEditingController campoSenha = TextEditingController();
  final repo = UsuarioRep();
  String nome = "";
  int senha = 0;
   GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login"),),
      body: Center(child:
      Column(
        children: [
          Padding(padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),),
          Form(
            key: formKey,
            child: Column(
            children: [
              TextFormField(
                controller: campoNome,
                decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Usuário',
                ),
                validator: (value){
                  if(value!.isEmpty){
                    return("Não pode ser vazio");
                  }else{
                    
                    /*if(campoNome.text*/
                  }return null;
                },

              ),
              TextFormField(
                controller: campoSenha,
                 decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Senha',
                ),
                keyboardType: TextInputType.number,
                validator: (value){
                  if(value!.isEmpty){
                    return("Não pode ser vazio!");
                  }else{
                    if(campoSenha.text.length<3){
                      return("Senha precisa de mais de 3 caracteres");
                    }
                   
                  } return null;
                }, obscureText: true,
              ),
            ],
          ),),
          ElevatedButton(onPressed: (){
            if(formKey.currentState!.validate()){
              
              nome = campoNome.text;
              senha = int.parse(campoSenha.text);

              if(repo.verificar(senha, nome)){
                Navigator.pushNamed(context,'/home');
              } else {
                mostrarMsg();
              
              }

              setState(() {
                
              });
                


            }

          }, child: Text("login"))

        ],
      ),
      ),
    );  }
    void mostrarMsg(){
      showDialog(context: context, builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Erro'),
          content: Text("Usuário e/ou senha incorretos"),
        );
      });
      
      
      
      

    }
    

}