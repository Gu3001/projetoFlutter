import 'package:flutter/material.dart';
import 'package:flutter_application/app/domain/entities/contact.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../my_app.dart';
import 'contact_list_back.dart';

class ContactList extends StatelessWidget {
  final _back = ContactListBack();

  CircleAvatar circleAvatar(String url){
    try {
      return CircleAvatar(backgroundImage: NetworkImage(url));
    } catch (e) {
      return CircleAvatar(child: Icon(Icons.person));
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
          title: Text('Lista de Contatos'),
          actions: [
            IconButton(
                icon: Icon(Icons.add),
                onPressed: () {
                  Navigator.of(context).pushNamed(MyApp.CONTACT_FORM);
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
                  List<Contact> lista = futuro.data;

                  //define componentes por padrão
                  return ListView.builder(
                    itemCount: lista.length,
                    itemBuilder: (context, i) {
                      var contato = lista[i];
                      return ListTile(
                        leading: circleAvatar(contato.urlAvatar), 
                        title: Text(contato.nome),
                        subtitle: Text(contato.telefone),
                        trailing: Container(
                            width: 100,
                            child: Row(
                              children: [
                                iconEditButton((){
                                  _back.goToForm(context, contato);
                                }),
                                iconRemoveButton(context, (){
                                  _back.remove(contato.id);
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
