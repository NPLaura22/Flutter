import 'package:ex_mod/cliente_class.dart';


class ClienteRep {

  static List<Cliente1> _listClientes = [];

  static get getListaClientes => _listClientes;

  set _listaClientes(value)=> _listaClientes = value; 

   void adicionar(Cliente1 cli) {
    _listClientes.add(cli);
  }
  /*ClienteRep() {
    this._listClientes = [];
  }
 

  void imprimir() {
    for (var i = 0; i < _listClientes.length; i++) {
      print("CPF: ${_listClientes[i].cpf}, Nome: ${_listClientes[i].nome}");
    }
  }*/
}
