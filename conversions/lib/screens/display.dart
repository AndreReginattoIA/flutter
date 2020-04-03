import 'package:conversions/components/bottom_nav.dart';
import 'package:conversions/components/text_field_row.dart';
import 'package:conversions/models/conversions_controller.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class Display extends StatefulWidget {
  @override
  _DisplayState createState() => _DisplayState();
}

class _DisplayState extends State<Display> {
  final controller = GetIt.I.get<ConversionsController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Conversões")),
      body: Column(
        children: <Widget>[
          TextFieldRow(),
          Expanded(
            child: controller.displayed()
          ),
        ],
      ),
      bottomNavigationBar: BottomNav(),
    );
  }
}
