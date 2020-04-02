import 'package:conversions/models/conversions_controller.dart';
import 'package:flutter/material.dart';

class ListOf extends StatefulWidget{

  @override
  _ListOfState createState() => _ListOfState();
}

class _ListOfState extends State<ListOf> {
  final controller = ConversionsController();

  @override
  Widget build(BuildContext context) {

    return controller.displayed();
  }
}