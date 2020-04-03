import 'package:conversions/models/conversion_abs.dart';
import 'package:mobx/mobx.dart';
part 'meters.g.dart';

class Meters = _MetersBase with _$Meters;

abstract class _MetersBase extends ConversionAbs with Store {
  @observable
  int index = 0;
  
  @observable
  String description = 'Metros';

  @override
  String toNormal(String value) {
    return value;
  } 

  @override
  String fromNormal(String value) {
    return value;
  }
}