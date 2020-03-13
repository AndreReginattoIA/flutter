import 'package:calculadora_desconto/models/memory.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Descont extends StatelessWidget {
  final Memory memory;
  final void Function(int) cbChangeDesc;
  final void Function(String) cbChangetype;

  Descont(
    this.memory,
    this.cbChangeDesc, 
    this.cbChangetype,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 7,
            child: Slider.adaptive(
              min: 0,
              max: 100,
              value: memory.descont.toDouble(),
              onChanged: (double value) {
                cbChangeDesc(value.round()); 
              },
            ),
          ),
          Expanded(
            flex: 3,
            child: TextField(
              decoration: new InputDecoration(labelText: 'Percent'),
              keyboardType: TextInputType.number,
              inputFormatters: <TextInputFormatter>
              [
                WhitelistingTextInputFormatter.digitsOnly,
              ],
              controller: new TextEditingController(
                text: memory.descont.toString(),
              ),
              onSubmitted: (String value) {
                cbChangeDesc(int.tryParse(value));
              },
            ),
          ),
          DropdownButton<String>(
            value: memory.type,
            icon: Icon(Icons.arrow_downward),
            iconSize: 24,
            elevation: 16,
            style: TextStyle(
              color: Colors.deepPurple
            ),
            underline: Container(
              height: 2,
              color: Colors.deepPurpleAccent,
            ),
            onChanged: (String newValue) {
              cbChangetype(newValue);
            },
            items: <String>['Desc', 'acres']
              .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              })
              .toList(),
          ),
        ],
      ),
    );
  }
}

