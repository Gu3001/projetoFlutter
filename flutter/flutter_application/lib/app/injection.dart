import 'package:flutter_application/app/database/sqlite/dao/contact_dao_impl.dart';
import 'package:get_it/get_it.dart';

import 'domain/interfaces/contact_dao.dart';

setupInjection(){
  GetIt getIt = GetIt.I;

  getIt.registerSingleton<ContactDAO>(ContactDAOImpl());
}