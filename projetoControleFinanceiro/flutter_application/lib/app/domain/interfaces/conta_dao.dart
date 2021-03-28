

import 'package:flutter_application/app/domain/entities/conta.dart';

abstract class ContaDAO{

save(Conta conta);

remove(int id);

Future<List<Conta>>find();

}
