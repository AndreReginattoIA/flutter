import 'package:calculadora_desconto/models/typeCalc.dart';

class Memory{
  double _initialValue = 0.0;
  double _result = 0.0;
  int _descont = 0;
  TypeCalc typeCalc = TypeCalc('D');

  double get result => _result;

  int get descont => _descont;

  double get initialValue => _initialValue;

  void validDesc(int newValue){
    if ((newValue == null) || (newValue <= 0))  
      _descont =  0;
    else if (newValue >= 100)
      _descont = 100;
    else
      _descont = newValue;
    setDesc();
  }

  void setInitialValue(double newInitialValue){
    if (newInitialValue != null)
      _initialValue = newInitialValue;
    else
      _initialValue = 0;
    setDesc();
  }

  void setDesc(){
    if ((initialValue > 0) || (_descont > 0))
      if (typeCalc.type == 'Desconto')
        _result = _initialValue-(_initialValue * (_descont / 100));
      else 
        _result = _initialValue+(_initialValue * (_descont / 100));
    else 
      _result = 0;
  }
  void setType(String newType){
    typeCalc.setType(newType);
    setDesc();
  }

}