import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class Digitable extends StatefulWidget {
  final String title;
  final Function(int) change;

  Digitable(
    this.title, this.change,
  );

  @override
  _DigitableState createState() => _DigitableState();
}

class _DigitableState extends State<Digitable> {

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Text(this.widget.title + ' = '),
        Expanded(
          child: Observer(builder: (_) {
            return TextField(
                decoration: new InputDecoration(labelText: "Digite um número"),
                keyboardType: TextInputType.numberWithOptions(
                  signed: true,
                ),
                onChanged: (String newValue) {
                  this.widget.change(int.tryParse(newValue));
                });
          }),
        ),
      ],
    );
  }
}
