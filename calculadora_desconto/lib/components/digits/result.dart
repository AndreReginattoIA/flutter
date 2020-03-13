import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  
  final double result;

  Result(
    this.result,
  );

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextField(
        decoration: new InputDecoration(labelText: "Your result"),
        enabled: false,
        controller: new TextEditingController(
          text: result.toString()
        )
      ),
    );
  }
}