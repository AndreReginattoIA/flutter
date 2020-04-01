import 'package:conversions/models/conversion_type.dart';
import 'package:flutter/material.dart';

class ListOf extends StatefulWidget{
  final ConversionsType _basetype1;
  final ConversionsType _basetype2;

  ListOf(
    this._basetype1,
    this._basetype2, 
  );

  @override
  _ListOfState createState() => _ListOfState();
}

class _ListOfState extends State<ListOf> {
  ConversionsType _type1;
  ConversionsType _type2;

  @override
  void initState(){
    super.initState();
    _type1 = widget._basetype1;
    _type2 = widget._basetype2;
  }

  @override
  Widget build(BuildContext context) {

    return Row(
      children: <Widget>[
        Expanded(
          child: _type1.displayed("1")
        ),
        Expanded(
          child: _type2.displayed("2")
        ),
      ],
    );
  }
}