

import 'package:flutter/cupertino.dart';
import 'package:flutter_application/app/domain/entities/conta.dart';
import 'package:flutter_application/app/domain/services/conta_service.dart';
import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';

import '../my_app.dart';

part 'conta_list_back.g.dart';

class ContaListBack = _ContaListBack with _$ContaListBack;

abstract class _ContaListBack with Store {
  var _service = GetIt.I.get<ContaService>();
//lista
@observable
Future<List<Conta>>list;

//atualizar lista
@action
refreshList([dynamic value]){
  list=_service.find();
}

_ContaListBack(){
  refreshList();
}

//método pra chamar o form  salvar/alterar
goToForm(BuildContext context, [Conta conta]){
  Navigator.of(context).pushNamed(MyApp.CONTA_FORM, arguments: conta).then(refreshList);

}

goToDetails(BuildContext context, Conta conta){
  Navigator.of(context).pushNamed(MyApp.CONTA_DETAILS, arguments: conta);
}

//excluir
remove(int id){
  _service.remove(id);
  refreshList();
}

}