import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_3/usuario_repository.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({super.key});

  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {

  String user = "";
  String senha="";
  final repo = UsuarioRepository();
  TextEditingController campoUser = TextEditingController();
  TextEditingController campoSenha = TextEditingController();
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Column (children: [
        SizedBox(
          height: 40,
        ),
        SizedBox(
          child: Image.network('https://www.kindpng.com/picc/m/235-2351000_login-icon-png-transparent-png.png'),
          width: 80,
        ),
        SizedBox(
          height: 30,
          child: Text("Login", style: TextStyle(fontSize: 23),),
        ),
        SizedBox(
          height: 20,
        ),

        
        Form(
          key: formkey,
          child: Column(children: [
            TextFormField(
              style: TextStyle(fontSize: 20),
              decoration: InputDecoration(
                labelText: 'Usuário',
                hintText: 'Nome do usuário',
                fillColor: Colors.amber,
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(40)),
              ),
              controller: campoUser,
              //inputFormatters: <TextInputFormatter>[
                //FilteringTextInputFormatter.digitsOnly
              //],
              validator: (value) {
                if (value!.isEmpty)
                {
                  return ("Preencher o nome do usuário, não pode ser vazio");
                }
                return null;
              },

            ),
            
            TextFormField(
              style: TextStyle(fontSize: 20),
              decoration: InputDecoration(
                labelText: 'Senha',
                hintText: 'Senha',
                fillColor: Color.fromARGB(255, 59, 156, 80),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(40)),
              ),
              obscureText: true,
              controller: campoSenha,
              validator: (value) {
                if (value!.isEmpty)
                {
                  return ("Preencha a senha, não pode ser vazio");
                }
                else
                {
                  if(campoSenha.text.length < 3)
                  {
                      return ("A senha precisa ter mais que 3 caracteres");
                  }
                }
                return null;
              },
            )
          ],),
        ),
        ElevatedButton(
  onPressed: () {
    if (formkey.currentState!.validate()) {

      user = campoUser.text;
      senha = campoSenha.text;
      if(repo.validarUsuario(user,senha)){
        mostrarMsgSucesso();
      Navigator.pushNamed(context, '/home');
      } else {
        Alerta();
      }

    }
  },
  child: Text("Entrar"),
),
          Text("Valores digitados: $user, $senha"),
      ]),)
    );
  }

  void mostrarMsgSucesso()
  {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Aluno cadastrado com sucesso")));
  }

  void Alerta()
  {
    showDialog(context: context, builder: (BuildContext context) {
      return AlertDialog(
        title: Text("Erro"),
        content: Text("incorreto"),
      );
    });
  }
}