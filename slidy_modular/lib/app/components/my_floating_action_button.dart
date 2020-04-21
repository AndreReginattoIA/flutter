import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

Widget MyFloatActionButton(String path){
  return FloatingActionButton(
    child: Icon(Icons.add),
    shape: CircleBorder(
      side: BorderSide(
        color: Colors.white,
        style: BorderStyle.solid,
        width: 3,
      )
    ),
    onPressed: () {
      Modular.to.pushNamed(path);
    },
  );
}