import 'package:flutter/material.dart';
import 'package:flutter_application/app/domain/entities/conta.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../my_app.dart';
import 'conta_list_back.dart';

class ContaList extends StatelessWidget {
  final _back = ContaListBack();

  CircleAvatar circleAvatar(String url){
    try {
      
        return CircleAvatar(child: Icon(Icons.monetization_on));
      
      // return CircleAvatar(backgroundImage: NetworkImage(url));
    } catch (e) {
      return CircleAvatar(child: Icon(Icons.monetization_on));
    }
  }

  Widget iconEditButton(Function onPressed){
    return IconButton(icon:Icon(Icons.edit), color: Colors.orange, onPressed:onPressed);
  }

   Widget iconRemoveButton(BuildContext context, Function remove){
    return IconButton(
      icon:Icon(Icons.delete), 
      color: Colors.red,
      onPressed:(){
        showDialog(
          context:context,
          builder: (context) => AlertDialog(
            title: Text('Excluir'),
            content:Text('Confirma a Exclusão?'),
            actions: [
              FlatButton(
                child:Text('Não'),
                onPressed: (){
                  Navigator.of(context).pop();
                },
              ),
              FlatButton(
                child: Text('Sim'),
                onPressed: remove,
              ),
            ]
          )
        );
      }
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Lista de Contas'),
          actions: [
            IconButton(
                icon: Icon(Icons.add),
                onPressed: () {
                  _back.goToForm(context);
                })
          ],
        ),
        body: Observer(builder: (context) {
          return FutureBuilder(
              future: _back.list,
              builder: (context, futuro) {
                if (!futuro.hasData) {
                  return CircularProgressIndicator();
                } else {
                  //constroi a lista
                  List<Conta> lista = futuro.data;

                  //define componentes por padrão
                  return ListView.builder(
                    itemCount: lista.length,
                    itemBuilder: (context, i) {
                      var conta = lista[i];
                      return ListTile(
                        leading: CircleAvatar(child: Icon(Icons.monetization_on)), 
                        title: Text(conta.nome),
                        onTap:(){
                          _back.goToDetails(context, conta);
                        },
                        subtitle: Text(conta.valor),
                        trailing: Container(
                            width: 100,
                            child: Row(
                              children: [
                                iconEditButton((){
                                  _back.goToForm(context, conta);
                                }),
                                iconRemoveButton(context, (){
                                  _back.remove(conta.id);
                                  Navigator.of(context).pop();
                                })
                              ],
                            )),
                      );
                    },
                  );
                }
              });
        }));
  }
}
