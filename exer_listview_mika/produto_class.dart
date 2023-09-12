class Produto1 {
  double _preco = 0;
  String _nome = "";
 double get preco => this._preco;

 set preco(double value) => this._preco = value;

  get nome => this._nome;

 set nome( value) => this._nome = value;

  Produto1(this._nome, this._preco);

}
