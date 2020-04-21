import 'package:flutter/material.dart';

Widget MyRegisterFloatingActionButton(void Function() onPress){
  return FloatingActionButton(
    child: Icon(Icons.check),
    shape: CircleBorder(
      side: BorderSide(
        color: Colors.white,
        style: BorderStyle.solid,
        width: 3,
      )
    ),
    onPressed: onPress,
  );
}