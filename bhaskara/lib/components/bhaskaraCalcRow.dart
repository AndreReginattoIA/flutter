import 'package:bhaskara/components/bhaskaraCalc.dart';
import 'package:flutter/material.dart';

class BhaskaraCalcRow extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(child: BhaskaraCalc(1)),
        Expanded(child: BhaskaraCalc(2)),
      ],
    );
  }
}