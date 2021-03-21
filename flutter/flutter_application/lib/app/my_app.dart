import 'package:flutter/material.dart';
import 'package:flutter_application/app/view/contact_form.dart';
import 'package:flutter_application/app/view/contact_list.dart';

class MyApp extends StatelessWidget {
  //ROTAS
  static const HOME = '/';
  static const CONTACT_FORM = 'contact-form';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        HOME:(context)=> ContactList(),
        CONTACT_FORM: (context) => ContactForm() 
        },  
      // home: ContactList(),
    );
  }
}