import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class ContactForm extends StatelessWidget {

  Widget fieldName(){
    return TextFormField(
      decoration:InputDecoration(
        labelText: 'Nome:'
      )
    );
  }

    Widget fieldEmail(){
    return TextFormField(
      decoration:InputDecoration(
        labelText: 'E-mail:'
      )
    );
  }

  Widget fieldPhone(){
    var mask = MaskTextInputFormatter(mask: '(##) # ####-####');
    return TextFormField(
      inputFormatters: [mask],
      keyboardType: TextInputType.number,
      decoration:InputDecoration(
        labelText: 'Telefone:',
        hintText: '(99) 9 9999-9999'
      )
    );
  }

  Widget fieldURLImage(){
    return TextFormField(
      decoration:InputDecoration(
        labelText: 'Endereço Foto:',
        hintText: 'https://www.site.com'
      )
    );
  }

//   @override
//   _ContactFormState createState() => _ContactFormState();
// }

// class _ContactFormState extends State<ContactForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Cadastro de Contato'),
          actions: [
            IconButton(icon: Icon(Icons.save), onPressed: null)
          ],
        ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child:Form(
          child: Column(
            children: [
              fieldName(),
              fieldEmail(),
              fieldPhone(),
              fieldURLImage(),
            ],
          ),
        ),
      ),
    );
  }
}