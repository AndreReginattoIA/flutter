import 'package:bhaskara/models/controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';

class DeltaCalc extends StatelessWidget {
  final controller = GetIt.I.get<Controller>();
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
      Container(
        child: Text(
          "∆ = (b)² + (-4.a.c)",
          style: TextStyle(color: Colors.black),
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
          return Text("∆ = (${controller.memory.B})² + (-4.${controller.memory.A}.${controller.memory.C})");
        }
      ),
      SizedBox(height: 5.0,),
      Observer(
        builder: (_) {
          return Text("∆ = ${controller.memory.delta}");
        }
      ),
      ]
    );
  }
}