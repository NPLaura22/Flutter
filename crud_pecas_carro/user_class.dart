class User{
  int _senha = 0;
  String _nome = "";

  User(this._senha,this._nome);

  //SENHA
  get senha => this._senha;
 set senha( value) => this._senha = value;

  //NOME
  get nome => this._nome;
 set nome( value) => this._nome = value;
}