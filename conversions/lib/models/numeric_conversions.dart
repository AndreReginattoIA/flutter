import 'package:mobx/mobx.dart';
part 'numeric_conversions.g.dart';

class NumericConversions = _NumericConversionsBase with _$NumericConversions;

abstract class _NumericConversionsBase with Store {
  @observable
  String description = '';
  @action
  changeDescription(String newValue) => description = newValue;

  _NumericConversionsBase({
    this.description,
  });
}
