
//import 'package:crud_pecas_carro/peca_class.dart';

import 'package:crud_pecas_carro/peca_class.dart';

class PecaRep {
  static List<Peca1> _listPecas = [];

  static get getListaPecas => _listPecas;

  set _listaCarros(value)=> _listaCarros = value; 

   void adicionar(Peca1 pec) {
    _listPecas.add(pec);
  }

   static void remover (Peca1 pec) {
  _listPecas.remove(pec);
 }

 //listar todos os carros da lista
 void imprimir () {
  for (var i=0; i<_listPecas.length; i++)
  {
    print("CÓDIGO: ${_listPecas[i].cod}, QUANTIDADE: ${_listPecas[i].qtd}, NOME: ${_listPecas[i].peca}, VALOR: ${_listPecas[i].valor}");
  }
  print("=========================");
 }
}