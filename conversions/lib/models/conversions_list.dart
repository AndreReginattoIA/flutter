import 'package:conversions/lists/lists.dart';
import 'package:conversions/models/conversions.dart';
import 'package:mobx/mobx.dart';
part 'conversions_list.g.dart';

class ConversionsList = _ConversionsListBase with _$ConversionsList;

abstract class _ConversionsListBase with Store {
  @observable
  List<Conversions> list = [Conversions(description: "sadsad")];

  @observable
  String selected = '';
  @action
  setSelected(String newValue) => selected = newValue;
}