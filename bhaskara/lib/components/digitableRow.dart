import 'package:bhaskara/components/digitable.dart';
import 'package:bhaskara/models/memory.dart';
import 'package:flutter/material.dart';

class DigitableRow extends StatelessWidget {
  
  final Memory memory;

  DigitableRow(
    this.memory,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          Expanded(
            child: Digitable('A', memory),
          ),
          Expanded(
            child: Digitable('B', memory),
          ),
          Expanded(
            child: Digitable('C', memory),
          ),
        ],
      ),
    );
  }
}