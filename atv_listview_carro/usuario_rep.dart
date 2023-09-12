
import 'package:atv_listview_carro/usuario_class.dart';

class UsuarioRep {
  List<Usuario> _listUsuario = [];

  UsuarioRep() {
    this._listUsuario = [];
    _listUsuario.add(Usuario(1808, "Laura"));
    _listUsuario.add(Usuario(2706, "Luan"));
  }
  void adicionar(Usuario cli) {
    _listUsuario.add(cli);
  }
  bool verificar(int senha, String nome){
    for(var i = 0; i<_listUsuario.length;i++){
      if(_listUsuario[i].senha==senha&&_listUsuario[i].nome==nome){
        return true;
      }
    }
    return false;
  }

 /* void imprimir() {
    for (var i = 0; i < _listUsuario.length; i++) {
      print(": ${_listUsuario[i].cpf}, Nome: ${_listUsuario[i].nome}");
    }
  }*/


  
}