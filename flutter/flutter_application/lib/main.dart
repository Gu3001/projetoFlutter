import 'package:flutter/material.dart';
import 'package:flutter_application/app/injection.dart';
import 'package:flutter_application/app/my_app.dart';

void main() {
  setupInjection();
  runApp(MyApp());
}
