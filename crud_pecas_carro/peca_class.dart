class Peca1 {

  int _cod = 0;
  int _qtd = 0;
  String _peca = "";
  double _valor = 0; 

  Peca1(this._cod, this._qtd, this._peca, this._valor);

  //GET SET CÓDIGO
  get cod => this._cod;
 set cod( value) => this._cod = value;
 
  //GET SET QUANTIDADE
  get qtd => this._qtd;
 set qtd( value) => this._qtd = value;

  //GET SET PEÇAS
  get peca => this._peca;
 set peca( value) => this._peca = value;

  //GET SET VALOR
  get valor => this._valor;
 set valor( value) => this._valor = value;


}