import 'package:bhaskara/components/digitable.dart';
import 'package:flutter/material.dart';

class DigitableRow extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Digitable('A'),
          Digitable('B'),
          Digitable('C'),
        ],
      ),
    );
  }
}