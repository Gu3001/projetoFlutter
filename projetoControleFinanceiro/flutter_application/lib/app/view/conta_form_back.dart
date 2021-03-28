import 'package:flutter/cupertino.dart';
import 'package:flutter_application/app/domain/entities/conta.dart';
import 'package:flutter_application/app/domain/services/conta_service.dart';
import 'package:get_it/get_it.dart';

class ContaFormBack{
  Conta conta;
  var _service=GetIt.I.get<ContaService>();
  // bool _nameIsValid;
  // bool _emailIsValid;
  // bool _phoneIsValid;
  // bool _urlIsValid;

  // @action
  // bool get isValid =>_nameIsValid&& _emailIsValid&& _phoneIsValid; 

  //diferenciar novo com alteração
  ContaFormBack(BuildContext context){
    var parameter = ModalRoute.of(context).settings.arguments;
    conta = (parameter == null) ? Conta(): parameter;
  }



  //salvar
save() async {
  await _service.save(conta);
}
  //validações
  // String validateName(String name){
  //   try{
  //     _service.validateName(name);
  //     _nameIsValid = true;
  //     return null;
  //   }catch(e){
  //     _nameIsValid = false;
  //     return e.toString();
  //   }
  // }

  //   String validateEmail(String email){
  //   try{
  //     _service.validateEmail(email);
  //     _emailIsValid = true;
  //     return null;
  //   }catch(e){
  //     _emailIsValid = false;
  //     return e.toString();
  //   }
  // }

  //   String validatePhone(String phone){
  //   try{
  //     _service.validatePhone(phone);
  //     _phoneIsValid = true;
  //     return null;
  //   }catch(e){
  //     _phoneIsValid = false;
  //     return e.toString();
  //   }
  // }

}