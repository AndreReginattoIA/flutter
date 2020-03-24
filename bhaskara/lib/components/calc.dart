import 'package:bhaskara/components/bhaskaraCalcRow.dart';
import 'package:bhaskara/components/deltaCalc.dart';
import 'package:flutter/material.dart';

class Calc extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {

    return Column(
      children: <Widget>[
        SizedBox(height: 15.0,),
        DeltaCalc(),
        SizedBox(height: 5.0,),
        BhaskaraCalcRow(),
      ] 
    );
  }
}