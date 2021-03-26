//Regras de negócio
import 'package:flutter_application/app/database/sqlite/dao/contact_dao_impl.dart';
import 'package:flutter_application/app/domain/interfaces/contact_dao.dart';
import 'package:get_it/get_it.dart';

class ContactService{
  // var dao = ContactDAOImpl();
  var dao = GetIt.I.get<ContactDAO>();
  
  
}