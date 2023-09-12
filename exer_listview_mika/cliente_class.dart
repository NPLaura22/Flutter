class Cliente1{
  int _cpf = 0;
  String _nome="";

  Cliente1(this._cpf,this._nome);

  get cpf => this._cpf;

 set cpf( value) => this._cpf = value;

  get nome => this._nome;

 set nome( value) => this._nome = value;

}