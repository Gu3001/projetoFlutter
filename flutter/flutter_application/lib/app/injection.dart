

import 'database/sqlite/dao/contact_dao_impl.dart';
import 'domain/interfaces/contact_dao.dart';
import 'package:get_it/get_it.dart';

import 'domain/services/contact_service.dart';

setupInjection(){
  GetIt getIt = GetIt.I;

  getIt.registerSingleton<ContactDAO>(ContactDAOImpl());
  //serviço de contato, criar service
  getIt.registerSingleton<ContactService>(ContactService());
}