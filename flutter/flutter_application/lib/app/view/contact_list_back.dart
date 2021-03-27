

import 'package:flutter/cupertino.dart';
import 'package:flutter_application/app/domain/entities/contact.dart';
import 'package:flutter_application/app/domain/services/contact_service.dart';
import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';

import '../my_app.dart';

part 'contact_list_back.g.dart';

class ContactListBack = _ContactListBack with _$ContactListBack;

abstract class _ContactListBack with Store {
  var _service = GetIt.I.get<ContactService>();
//lista
@observable
Future<List<Contact>>list;

//atualizar lista
@action
refreshList([dynamic value]){
  list=_service.find();
}

_ContactListBack(){
  refreshList();
}

//método pra chamar o form  salvar/alterar
goToForm(BuildContext context, [Contact contact]){
  Navigator.of(context).pushNamed(MyApp.CONTACT_FORM, arguments: contact).then(refreshList);

}

goToDetails(BuildContext context, Contact contact){
  Navigator.of(context).pushNamed(MyApp.CONTACT_DETAILS, arguments: contact);
}

//excluir
remove(int id){
  _service.remove(id);
  refreshList();
}

}