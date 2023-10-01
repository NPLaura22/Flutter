import 'package:crud_pecas_carro/user_class.dart';

class UserRep {
  List<User> _listUser = [];

  UserRep() {
    this._listUser = [];
    _listUser.add(User(1808, "Laura"));
    _listUser.add(User(2706, "Luan"));
  }
  void adicionar(User cli) {
    _listUser.add(cli);
  }
  bool verificar(int senha, String nome){
    for(var i = 0; i<_listUser.length;i++){
      if(_listUser[i].senha==senha&&_listUser[i].nome==nome){
        return true;
      }
    }
    return false;
  }
}