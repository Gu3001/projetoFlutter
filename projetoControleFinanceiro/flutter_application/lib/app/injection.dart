

import 'database/sqlite/dao/conta_dao_impl.dart';
import 'domain/interfaces/conta_dao.dart';
import 'package:get_it/get_it.dart';

import 'domain/services/conta_service.dart';

setupInjection(){
  GetIt getIt = GetIt.I;

  getIt.registerSingleton<ContaDAO>(ContaDAOImpl());
  //serviço de contato, criar service
  getIt.registerSingleton<ContaService>(ContaService());
}