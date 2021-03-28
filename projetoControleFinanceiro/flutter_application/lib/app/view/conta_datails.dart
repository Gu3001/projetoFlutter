import 'package:flutter/material.dart';
import 'package:flutter_application/app/domain/entities/conta.dart';
import 'package:flutter_application/app/view/conta_details_back.dart';

class ContaDetails extends StatelessWidget {

  showModalError(BuildContext context){
    var alert =AlertDialog(
      title:Text('Alerta!'),
      content: Text('Não foi possível encontrar um APP compatível.'),
    );
    showDialog(
      context: context,
      builder:(BuildContext context){
        return alert;
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    var _back=ContaDetailsBack(context);
    Conta conta = _back.conta;

    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints){
       var width = constraints.biggest.width;
       var radius = width/3;
       // var height = constraints.biggest.height;

        return Scaffold(
          body: ListView(
            padding:EdgeInsets.all(60),
            children: [
          
              CircleAvatar(child: Icon(Icons.monetization_on, size: width/2), radius: radius,)
              ,
              Center(
                child: Text('${conta.nome}', style: TextStyle(fontSize: 30),),
                
              ),
              Card(
                child: ListTile(
                  title: Text('Valor:'),
                  subtitle: Text('${conta.valor}'),
                  trailing: Container(
                    width: width/4,
                    child: Row(
                      
                      children:[
                      IconButton(
                        color:Colors.blue,
                        icon:Icon(Icons.message),
                        ),

                        IconButton(
                        color:Colors.blue,
                        icon:Icon(Icons.phone),
                        ),

                        ]
                    ),
                  ),
                ),
              ),
               Card(
                child: ListTile(
                  title: Text('Email:'),
                  subtitle: Text('${conta.obs}'),
                ),
              ),
            ],
          ),
          floatingActionButton: FloatingActionButton(
              child: Icon(Icons.arrow_back),
              onPressed: (){
                _back.goToBack();
              },
          ),
        );
      }
    );
  }
}