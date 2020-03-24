import 'package:bhaskara/components/digitable.dart';
import 'package:bhaskara/models/controller.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class DigitableRow extends StatelessWidget {
  final controller = GetIt.I.get<Controller>();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          Expanded(
            child: Digitable('A', controller.memory.changeA),
          ),Expanded(
            child: Digitable('B', controller.memory.changeB),
          ),Expanded(
            child: Digitable('C', controller.memory.changeC),
          ),
        ],
      ),
    );
  }
}