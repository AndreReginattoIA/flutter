import 'package:flutter/material.dart';
import 'package:flutter/src/material/colors.dart';

class TypeCalc {
  Color color = Colors.blue;
  IconData icon = Icons.arrow_downward;
  String type = 'Desconto';

  TypeCalc(
    @required
    String type
  );

  String get getType => type;
  
  void setType(String newType) {
    type = newType;
    if (newType == 'Desconto'){
      setIcon(Icons.arrow_downward);
      setColor(Colors.blue);
    }else{
      setIcon(Icons.arrow_upward);
      setColor(Colors.red);
    }
  }

  void setIcon(IconData newIcon) => icon = newIcon;

  void setColor(Color newColor) => color = newColor; 
}