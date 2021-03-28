import 'package:flutter_application/app/database/sqlite/connection.dart';
import 'package:flutter_application/app/domain/entities/conta.dart';
import 'package:flutter_application/app/domain/interfaces/conta_dao.dart';
import 'package:sqflite/sqflite.dart';

  class ContaDAOImpl implements ContaDAO{
    Database _db;

    @override
    Future<List<Conta>> find() async {
       _db = await Connection.get();
       List<Map<String,dynamic>> resultado = await _db.query('conta');
       List<Conta> lista = List.generate(resultado.length, (i){
         var linha = resultado[i];
        return Conta (
          id:linha['id'],
          nome:linha['nome'],
          valor:linha['valor'],
          obs:linha['obs'],
        );
       }
       );

       return lista;
    }

    @override
    remove(int id) async{
        _db = await Connection.get();
        var sql='DELETE FROM conta WHERE id=?';
        _db.rawDelete(sql,[id]);
      }
    
      @override
      save(Conta conta) async {
      _db = await Connection.get();
      var sql;
      if (conta.id == null) {
        sql = 'INSERT INTO conta(nome,valor,obs) VALUES(?,?,?)';
        _db.rawInsert(sql,[conta.nome,conta.valor,conta.obs]);
      }else{
        sql='UPDATE conta SET nome=?, valor=?, obs=? WHERE id=?';
        _db.rawUpdate(sql,[conta.nome, conta.valor, conta.obs, conta.id]);
      }
    }
    
  }