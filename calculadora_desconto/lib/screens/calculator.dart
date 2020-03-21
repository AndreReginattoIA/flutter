import 'package:calculadora_desconto/components/discounts/discount.dart';
import 'package:calculadora_desconto/components/digits/rowDigit.dart';
import 'package:calculadora_desconto/models/memory.dart';
import 'package:flutter/material.dart';

class CalcState extends StatefulWidget {

  @override
  _CalcStateState createState() => _CalcStateState();
}

class _CalcStateState extends State<CalcState> {
  final Memory memory = Memory();

  _onChangeDesc(int command){
    setState(() {
      memory.validDesc(command);
    });
  }

  _setInitialValue(double newInitialValue){
    setState(() {
      memory.setInitialValue(newInitialValue);
    });
  }

  _setType(String newType){
    setState(() {
      memory.setType(newType);
    });
  }

  @override
  Widget build(BuildContext context) {
      return new Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: 
          Text(
            'Calculadora de descontos'
          ),
        ),
      body: new Container(
        child: Column(
          children: <Widget>[
            RowDigit(memory.initialValue, memory.result, _setInitialValue),
            Discount(memory, _onChangeDesc, _setType),
          ],
        ),
      ),
    );
  }
}