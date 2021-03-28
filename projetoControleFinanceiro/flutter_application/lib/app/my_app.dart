import 'package:flutter/material.dart';
import 'package:flutter_application/app/view/conta_datails.dart';
import 'package:flutter_application/app/view/conta_form.dart';
import 'package:flutter_application/app/view/conta_list.dart';

class MyApp extends StatelessWidget {
  //ROTAS
  static const HOME = '/';
  static const CONTA_FORM = 'conta-form';
  static const CONTA_DETAILS = 'conta-details';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        HOME:(context)=> ContaList(),
        CONTA_FORM: (context) => ContaForm(),
        CONTA_DETAILS: (context) => ContaDetails()
        },  
      // home: ContactList(),
    );
  }
}