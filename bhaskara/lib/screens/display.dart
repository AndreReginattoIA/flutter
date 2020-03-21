import 'package:bhaskara/components/calc.dart';
import 'package:bhaskara/components/digitableRow.dart';
import 'package:bhaskara/models/memory.dart';
import 'package:flutter/material.dart';

class Display extends StatelessWidget {
  
  final Memory memory = Memory();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text(
          'Calculado de bhaskara'
        ),
      ),
      backgroundColor: Colors.white,
      body: new Column(
        children: <Widget>[
          DigitableRow(memory),
          Calc(memory),
        ],
      ),
    );
  }
}