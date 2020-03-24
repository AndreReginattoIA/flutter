import 'package:bhaskara/models/memory.dart';
import 'package:mobx/mobx.dart';
part 'controller.g.dart';

class Controller = _ControllerBase with _$Controller;

abstract class _ControllerBase with Store {
  var memory = Memory();
  
  bool xisValid(double value){
    return !(value.isInfinite || value.isNaN || value == null);
  }

}