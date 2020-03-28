import 'package:calculadora_desconto/models/memory.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Discount extends StatelessWidget {
  final Memory memory;
  final void Function(int) cbChangeDesc;
  final void Function(String) cbChangetype;

  Discount(
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
            flex: 2,
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
            child: TextField(
              decoration: new InputDecoration(labelText: 'Percentual'),
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
          SizedBox(width: 3,),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(top: 30.0),
              child: DropdownButton<String>(
                value: memory.typeCalc.type,
                icon: Icon(memory.typeCalc.icon),
                iconSize: 10,
                elevation: 16,
                style: TextStyle(
                  color: memory.typeCalc.color
                ),
                underline: Container(
                  height: 2,
                  color: memory.typeCalc.color,
                ),
                onChanged: (String newValue) {
                  cbChangetype(newValue);
                },
                items: <String>['Desconto', 'Acréscimo']
                  .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  })
                  .toList(),
              ), 
            ),
          )
        ],
      ),
    );
  }
}

