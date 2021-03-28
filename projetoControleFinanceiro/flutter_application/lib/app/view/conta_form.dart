import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

import 'conta_form_back.dart';

class ContaForm extends StatelessWidget {
  //maneira de obter widget específico
  final _form= GlobalKey<FormState>();

  Widget fieldNome(ContaFormBack back){
    return TextFormField(
      // validator: back.validateName,
      onSaved: (newValue)=>back.conta.nome=newValue,
      initialValue: back.conta.nome,
      decoration:InputDecoration(
        labelText: 'Nome Conta:'
      )
    );
  }

    Widget fieldValor(ContaFormBack back){
    return TextFormField(
      // validator: back.validateEmail,
      onSaved: (newValue)=>back.conta.valor=newValue,
      initialValue: back.conta.valor,
      keyboardType: TextInputType.number,
      decoration:InputDecoration(
        labelText: 'Valor:'
      )
    );
  }

  Widget fieldObs(ContaFormBack back){
    // var mask = MaskTextInputFormatter(mask: '(##)#####-####');
    return TextFormField(
      // validator: back.validatePhone,
      onSaved: (newValue)=>back.conta.obs=newValue,
      initialValue: back.conta.obs,
      // inputFormatters: [mask],
      // keyboardType: TextInputType.number,
      decoration:InputDecoration(
        labelText: 'Observação',
        hintText: 'Observação'
      )
    );
  }


//   @override
//   _ContactFormState createState() => _ContactFormState();
// }

// class _ContactFormState extends State<ContactForm> {
  @override
  Widget build(BuildContext context) {
    var _back = ContaFormBack(context);
    return Scaffold(
      appBar: AppBar(
          title: Text('Cadastro de Contas'),
          actions: [
            IconButton(
              icon: Icon(Icons.save),
               onPressed: (){
                 _form.currentState.validate();
                 _form.currentState.save();
                //  if (_back.isValid) {
                  _back.save();
                  Navigator.of(context).pop();
                //  }
               }
               )
          ],
        ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child:Form(
          key: _form,
          child: Column(
            children: [
              fieldNome(_back),
              fieldValor(_back),
              fieldObs(_back),
            ],
          ),
        ),
      ),
    );
  }
}