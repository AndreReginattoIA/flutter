import 'package:bhaskara/models/memory.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Digitable extends StatefulWidget {

  final String title;
  final Memory memory;

  Digitable(
    this.title,
    this.memory,
  );

  @override
  _DigitableState createState() => _DigitableState();
}

class _DigitableState extends State<Digitable> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Text(this.widget.title+' = '),
        
        Expanded(
          child: TextField(
            decoration: new InputDecoration(labelText: "Digite um número"),
            keyboardType: TextInputType.number,
            inputFormatters: <TextInputFormatter>[
              WhitelistingTextInputFormatter.digitsOnly,
            ],
            onChanged: (newValue){
              setState(() {
                this.widget.memory.setNumber(this.widget.title, int.tryParse(newValue));
                this.widget.memory.calcDelta();
              });
            },
          ),
        ),
      ],
    );
  }
}