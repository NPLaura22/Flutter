// ignore_for_file: prefer_const_constructors

import 'package:crud_pecas_carro/user_rep.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController campoNome = TextEditingController();
  TextEditingController campoSenha = TextEditingController();
  final repo = UserRep();

  String nome = "";
  int senha = 0;

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login de Usuário: "),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.purple,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                'https://i.pinimg.com/564x/7b/c5/08/7bc50826e9533d8fcbfb78203edf785c.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 16),

              // CONSTRUÇÃO DO FORM
              Form(
                key: formKey,
                child: Column(
                  children: [
                    // DESIGN CAMPO NOME
                    TextFormField(
                      controller: campoNome,
                      style: TextStyle(color: Colors.purple), // cor do texto
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Usuário',
                        filled: true,
                        fillColor: Color.fromARGB(218, 231, 221, 221),
                        // fundinho transparente
                        labelStyle: TextStyle(color: Colors.white),
                        // cor do titulinho
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.purple),
                        ),
                      ),

                      // VALIDAÇÃO DO FORM
                      validator: (value) {
                        if (value!.isEmpty) {
                          return ("Preencha o campo vazio!");
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 16),
                    // DESIGN CAMPO SENHA
                    TextFormField(
                      controller: campoSenha,
                      style: TextStyle(color: Colors.purple),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Senha',
                        filled: true,
                        fillColor: Color.fromARGB(218, 231, 221, 221),
                        labelStyle: TextStyle(color: Colors.white),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.purple),
                        ),
                      ),
                      keyboardType: TextInputType.number,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return ("Preencha o campo vazio!");
                        } else if (campoSenha.text.length < 3) {
                          return ("'Senha' precisa ter mais de 3 caracteres!");
                        }
                        return null;
                      },
                      obscureText: true,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),

              ElevatedButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    nome = campoNome.text;
                    senha = int.parse(campoSenha.text);

                    if (repo.verificar(senha, nome)) {
                      Navigator.pushNamed(context, '/home');
                    } else {
                      mensagem();
                    }

                    setState(() {});
                  }
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.purple), 
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.white), 
                ),

                child: Text("Login"),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void mensagem(){
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Erro'),
          content: Text("Usuário e/ou senha incorretos"),
        );
      },
    );
  }
}
