import 'package:flutter_application_3/usuario.dart';

class UsuarioRepository {
  List<Usuario> _usuarios = [
    Usuario('usuario1', 'senha1'),
    Usuario('usuario2', 'senha2'),
  ];

  bool validarUsuario(String nome, String senha) {
    for (var usuario in _usuarios) {
      if (usuario.nome == nome && usuario.senha == senha) {
        return true;
      }
    }
    return false;
  }
}
