class Tarefa {
  int _userId = 0;
  int _taskId = 0;
  String _title = "";
  bool _completed = false;
 int get userId => this._userId;


  //construtor vazio - precisa inicializar o objeto na classe State
  Tarefa ();

  //construtor que mapeia dados direto do json para o objeto 
  Tarefa.fromJson(Map<String, dynamic> json)
    : _userId = json['userId'],
      _taskId = json['id'],
      _title = json['title'],
      _completed = json['completed']
    ;

    set userId(int value) => this._userId = value;

      get taskId => this._taskId;

    set taskId( value) => this._taskId = value;

      get title => this._title;

    set title( value) => this._title = value;

      get completed => this._completed;

    set completed( value) => this._completed = value;

}