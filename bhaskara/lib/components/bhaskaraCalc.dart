import 'package:bhaskara/models/controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';

class BhaskaraCalc extends StatelessWidget {
  final int type;
  final controller = GetIt.I.get<Controller>();
  
  BhaskaraCalc(
    this.type,
  );

  String calcText(){
    return type == 1 ? "x = - b + √∆" : "x = - b - √∆";
  }

  String calculate(){
    return type == 1 ? 
      "x' = ${controller.xisValid(controller.memory.x1) ? controller.memory.x1.toStringAsFixed(2) : "?"}" :
      "x'' = ${controller.xisValid(controller.memory.x2) ? controller.memory.x2.toStringAsFixed(2) : "?"}";
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          child: Column( 
            children: <Widget>[
              Text(calcText(), 
                style: TextStyle(
                  decoration: TextDecoration.underline,
                ),
              ),
              Text("     2.a     ")
            ]
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(color: Colors.black, spreadRadius: 1),
            ],
          ),
        ),
        SizedBox(height: 5.0,),
        Observer(
          builder: (_) {
            return Text(calculate());
          }
        ),  
      ],
    );
  }
}