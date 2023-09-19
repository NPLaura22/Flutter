// ignore_for_file: prefer_const_constructors

import 'package:atv_carro/usuario_rep.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController campoNome = TextEditingController();
  TextEditingController campoSenha = TextEditingController();
  final repo = UsuarioRep();
  String nome = "";
  int senha = 0;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.yellow,
        
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              'https://i.pinimg.com/originals/22/95/b0/2295b0b71998bde0169abb8e37aa3667.jpg',
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 16),
              Form(
                key: formKey,
                child: Column(
                  children: [
                    TextFormField(
                      controller: campoNome,
                      style: TextStyle(color: Colors.yellow),                    
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Usuário',
                        filled: true,                   // Preencher com a cor de fundo
                        fillColor: Color.fromARGB(218, 231, 221, 221),      // Cor de fundo branca
                        labelStyle: TextStyle(color: Colors.white), // Cor de "usuario"
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.yellow), // Cor da borda (qnd ta em foco)
                        ),
                      
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return ("Preencha o campo vazio!");
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 16),
                    TextFormField(
                      controller: campoSenha,  
                      style: TextStyle(color: Colors.yellow),                    
                      decoration: InputDecoration(                        
                        border: OutlineInputBorder(),
                        labelText: 'Senha',
                        filled: true,                   // Preencher com a cor de fundo
                        fillColor: Color.fromARGB(218, 231, 221, 221),      // Cor de fundo branca
                        labelStyle: TextStyle(color: Colors.white), // Cor de "usuario"
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.yellow), // Cor da borda (qnd ta em foco)
                        ),
                      ),
                      keyboardType: TextInputType.number,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return ("Preencha o campo vazio!");                          
                        } else if (campoSenha.text.length < 3) {
                          return ("Senha precisa de mais de 3 caracteres");
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
                      mostrarMsg();
                    }

                    setState(() {});
                  }
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.yellow), 
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

  void mostrarMsg() {
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
