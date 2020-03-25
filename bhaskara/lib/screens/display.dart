import 'package:bhaskara/admob/admob.dart';
import 'package:bhaskara/components/calc.dart';
import 'package:bhaskara/components/digitableRow.dart';
import 'package:flutter/material.dart';

class Display extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text(
          'Calculadora de Bhaskara'
        ),
      ),
      backgroundColor: Colors.white,
      body: new Column(
        children: <Widget>[
          DigitableRow(),
          Calc(),
          MyBanner(),
        ],
      ),
    );
  }
}