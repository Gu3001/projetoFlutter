import 'package:flutter/cupertino.dart';
import 'package:flutter_application/app/domain/entities/conta.dart';

class ContaDetailsBack{
  BuildContext context; 
  Conta conta;

  ContaDetailsBack(this.context){
    conta = ModalRoute.of(context).settings.arguments;
  }

  goToBack(){
    Navigator.of(context).pop();
  }
}