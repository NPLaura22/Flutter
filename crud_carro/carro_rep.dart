import 'package:atv_carro/carro_class.dart';

class CarroRep {

  static List<Carro1> _listCarros = [];

  static get getListaCarros => _listCarros;

  set _listaCarros(value)=> _listaCarros = value; 

   void adicionar(Carro1 car) {
    _listCarros.add(car);
  }
  /*ClienteRep() {
    this._listClientes = [];
  }

  void imprimir() {
    for (var i = 0; i < _listClientes.length; i++) {
      print("CPF: ${_listClientes[i].cpf}, Nome: ${_listClientes[i].nome}");
    }
  }*/

 static void remover (Carro1 car) {
  _listCarros.remove(car);
 }

 //listar todos os carros da lista
 void imprimir () {
  for (var i=0; i<_listCarros.length; i++)
  {
    print("CÓDIGO: ${_listCarros[i].cod}, Montadora: ${_listCarros[i].marca}");
  }
  print("=========================");
 }
}