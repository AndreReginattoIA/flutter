import 'package:flutter/material.dart';

class Digitable extends StatelessWidget {

  final String title;

  Digitable(
    this.title,
  );

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Text(this.title+' = '),
        ),
        Expanded(
          child: TextField(
            decoration: new InputDecoration(labelText: "Digite um número"),
            keyboardType: TextInputType.number,
          ),
        ),
      ],
    );
  }
}