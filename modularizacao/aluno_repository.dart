import 'aluno.dart';

class AlunoRepository {
  //ATRIBUTOS ARRAYLIST
  List<Aluno> _listaAlunos = []; //_listaAlunos é nome que deu para a chamada da classe Aluno criada em aluno.dart

  //CONSTRUTOR
  AlunoRepository() {
    this._listaAlunos = [];
  }

  //METODO
  void adicionar (Aluno al) { //pega quem ta antrando e coloca no array
    _listaAlunos.add(al);
  }

  void imprimir() {
    for (var i=0; i<_listaAlunos.length; i++) {
      print("RA: ${_listaAlunos[i].ra}, Nome: ${_listaAlunos[i].nome}");
    }
  }
}