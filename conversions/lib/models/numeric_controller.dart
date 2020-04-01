import 'package:conversions/models/conversion_type.dart';
import 'package:conversions/models/numeric_conversions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
part 'numeric_controller.g.dart';

class NumericController = NumericControllerBase with _$NumericController;

abstract class NumericControllerBase extends ConversionsType with Store {
  List<NumericConversions> _numeric = [
      NumericConversions(description: "teste 1"),
      NumericConversions(description: "teste 2"),
      NumericConversions(description: "teste 3"),
      NumericConversions(description: "teste 4"),
      NumericConversions(description: "teste 5"),
      NumericConversions(description: "teste 6")
  ];

  @observable
  String _selected = '';

  @override
  Widget displayed(String radioValue) {

    return Container(
      child: ListView.builder(
        itemCount: _numeric.length,
        itemBuilder: (BuildContext context, int index) {
          return Observer(
            builder: (_){
              return RadioListTile(
                title: Text(_numeric[index].description),
                value: _numeric[index].description+radioValue,
                groupValue: _selected,
                onChanged: (newValue) {
                  _selected = newValue;
                },
              );
            },
          );
        },
      ),      
    );
  }
}