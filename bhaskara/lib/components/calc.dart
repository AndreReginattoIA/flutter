import 'package:bhaskara/models/memory.dart';
import 'package:flutter/material.dart';

class Calc extends StatelessWidget {
  final Memory memory;
  
  Calc(
    this.memory
  );

  
  @override
  Widget build(BuildContext context) {
    return Container(
      
      child: Text(memory.getDelta.toString()),
    );
  }
}