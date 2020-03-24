import 'package:bhaskara/models/controller.dart';
import 'package:bhaskara/screens/display.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

void main() { 
  GetIt getit = GetIt.I;
  getit.registerSingleton<Controller>(Controller());

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculadora de bhaskara',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Display(),
    );
  }
}
