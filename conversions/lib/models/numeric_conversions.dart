import 'package:conversions/models/conversion_type.dart';
import 'package:flutter/material.dart';

class NumericConversions extends ConversionsType{
  bool selected = false;
  String description;

  NumericConversions({
    this.description,
    this.selected = false,
  });

  @override
  Widget displayed() {
    List<NumericConversions> _numeric = [
      NumericConversions(description: "teste 1"),
      NumericConversions(description: "teste 2")
    ];

    return Container(
      child: ListView.builder(
        itemBuilder: (BuildContext context, int index) {

          return ListTile(
            title: Text(_numeric[index].description),
            subtitle: Text(_numeric[index].selected ? 'My new post':'sad'),
            onTap: () {
              _numeric[index].selected = true;
            },
          );
        },
        itemCount: _numeric.length,
      ),      
    );
  }

}