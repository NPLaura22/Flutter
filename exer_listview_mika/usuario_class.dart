class Usuario{
  int _senha = 0;
  String _nome="";

  Usuario(this._senha,this._nome);

  get senha => this._senha;

 set senha( value) => this._senha = value;

  get nome => this._nome;

 set nome( value) => this._nome = value;

}