import 'package:mobx/mobx.dart';
part 'conversions.g.dart';

class Conversions = _ConversionsBase with _$Conversions;

abstract class _ConversionsBase with Store {
  @observable
  String description = '';
  @action
  changeDescription(String newValue) => description = newValue;

  _ConversionsBase({
    this.description,
  });
}
