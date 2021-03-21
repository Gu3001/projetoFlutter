import 'package:flutter/material.dart';

import '../my_app.dart';

class ContactList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //define componentes por padrão
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Contatos'),
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed:(){
              Navigator.of(context).pushNamed(MyApp.CONTACT_FORM);
            }
            )
        ],
        ),
      body: ListView(),
    );
  }
}