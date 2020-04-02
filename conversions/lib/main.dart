import 'package:conversions/models/conversions_controller.dart';
import 'package:conversions/screens/display.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

void main() { 
  GetIt getit = GetIt.I;
  getit.registerSingleton<ConversionsController>(ConversionsController());

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Conversões',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Display(),
    );
  }
}
