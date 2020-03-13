import 'package:calculadora/components/button.dart';
import 'package:flutter/cupertino.dart';

class ButtonRow extends StatelessWidget {
  
  final List<Button> Buttons;

  ButtonRow(this.Buttons);
  
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: Buttons.fold(<Widget>[], (list, button){
          list.isEmpty ? list.add(button) : list.addAll([SizedBox(width: 1,), button]);
          return list;
        }),
      ),
    );
  }
}