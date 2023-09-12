import 'produto_class.dart';

class ProdutoRep {
  List<Produto1> _listaProdutos = [];
  ProdutoRep() {
    this._listaProdutos = [];
  }
  void adicionar(Produto1 p) {
    _listaProdutos.add(p);
  }

  void imprimir() {
    for (var i = 0; i < _listaProdutos.length; i++) {
      print(
          "Nome: ${_listaProdutos[i].nome}, Preço: ${_listaProdutos[i].preco}");
    }
  }
}
