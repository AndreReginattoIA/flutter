import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String text;
  final int fl;
  final int color;
  final void Function(String) cb;

  static List<Color> teste = 
  [
    Color.fromRGBO(82, 82, 82, 1),//DARK
    Color.fromRGBO(112, 112, 112, 1),//STANDARD
    Color.fromRGBO(250, 158, 13, 1),//ORANGE
  ];
  
  Button({
    @required this.text, 
    this.fl = 1, 
    this.color = 1, 
    @required this.cb
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: fl,
      child: RaisedButton(
        color: teste[color],
        child: Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 32,
              fontWeight: FontWeight.w200,
            ),
          ),
        onPressed: () => cb(text),
      ),
    );
  }
}