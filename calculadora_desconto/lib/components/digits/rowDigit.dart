import 'package:calculadora_desconto/components/digits/digitable.dart';
import 'package:calculadora_desconto/components/digits/result.dart';
import 'package:flutter/material.dart';

class RowDigit extends StatelessWidget {

  final double initialValue;
  final double result;
  final void Function(double) cbInitialValue;
  

  RowDigit(
    this.initialValue,
    this.result, 
    this.cbInitialValue,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          Digitable(initialValue, cbInitialValue),
          Result(result),
        ],
      ),
    );
  }
}