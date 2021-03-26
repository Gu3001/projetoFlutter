//Regras de negócio
import 'package:flutter_application/app/database/sqlite/dao/contact_dao_impl.dart';
import 'package:flutter_application/app/domain/entities/contact.dart';
import 'package:flutter_application/app/domain/exception/domain_layer_exception.dart';
import 'package:flutter_application/app/domain/interfaces/contact_dao.dart';
import 'package:get_it/get_it.dart';

class ContactService{
  // var dao = ContactDAOImpl(); //implementação no dao e regras de negócio separada aqui
  var _dao = GetIt.I.get<ContactDAO>();
  
  //tem que salvar, alterar e excluir
  //nome(3,50), email(@*), telefone mask(99)9 9999-9999

  save(Contact contact){
    validateName(contact.nome);
    validateEmail(contact.email);
    validatePhone(contact.telefone);
    _dao.save(contact);
  }
  

  remove(int id){
    _dao.remove(id);
  }
  
  Future<List<Contact>>find(){
    return _dao.find();
  }

    validateName(String name) {
    var min =3;
    var max = 50;

    if(name == null){
      throw new DomainLayerException('O nome é obrigatório');
    }else if(name.length < min){
      throw new DomainLayerException('O nome deve possuir pelo menos $min caracteres');
    }else if(name.length > max){
      throw new DomainLayerException('O nome deve possuir no máximo $max caracteres');
    }
  }

  validateEmail(String email){
    if(email == null){
      throw new DomainLayerException('O E-mail é obrigatório.');
    }else if(!email.contains('@')){
      throw new DomainLayerException('O email deve possuir @.');
    }
  }

  validatePhone(String phone){
    var format = RegExp(r'^\([1-9]{2}\)[9][6-9]{1}[0-9]{3}\-[0-9]{4}$');//(99) 9 9999-9999

    if (phone == null) {
      throw new DomainLayerException('O telefone é obrigatório.');
    }else if(!format.hasMatch(phone)){
      throw new DomainLayerException('Formato inválido. o formato deve ser (99) 9 9999-9999.');
    }
  }
  
}