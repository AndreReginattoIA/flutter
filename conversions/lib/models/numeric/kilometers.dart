import 'package:conversions/models/conversion_abs.dart';
import 'package:mobx/mobx.dart';
part 'kilometers.g.dart';

class Kilometers = _KilometersBase with _$Kilometers;

abstract class _KilometersBase extends ConversionAbs with Store {
  @observable
  int index = 1;
  
  @observable
  String description = 'Quilômetros';

  @override
  String toNormal(String value) {
    return (double.tryParse(value) * 1000).toString();
  } 

  @override
  String fromNormal(String value) {
    return (double.tryParse(value) / 1000).toString();
  }
}