import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Digitable extends StatelessWidget {
  final double initialValue;
  final void Function(double) cb;

  Digitable(
    this.initialValue,
    this.cb,
  );

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextField(
        decoration: new InputDecoration(labelText: "Digite um número"),
        keyboardType: TextInputType.number,
        onChanged: (String value){
          cb(double.tryParse(value.replaceFirst(',', '.')));
        },
        
      ),
    );
  }
}