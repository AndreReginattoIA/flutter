import 'package:conversions/models/conversion_type.dart';
import 'package:flutter/material.dart';

class ListOf extends StatelessWidget{
  final ConversionsType _type;
  ListOf(
    this._type, 
  );

  @override
  Widget build(BuildContext context) {
     return _type.displayed();
  }
  
}