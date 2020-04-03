import 'package:conversions/models/conversions_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';

class TextFieldRow extends StatelessWidget {
  final controller = GetIt.I.get<ConversionsController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Observer(builder: (_) {
            return TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Sua resposta",
              ),
              onChanged: controller.setValor1,
            );
          }),
        ),
        Expanded(
          child: Observer(builder: (_) {
            return TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Sua resposta",
                ),
                controller: new TextEditingController(
                  text: controller.getResult(),
                ));
          }),
        ),
      ],
    );
  }
}
