import 'package:conversions/models/conversion_abs.dart';
import 'package:conversions/utils/lists.dart';
import 'package:mobx/mobx.dart';
part 'conversions_list.g.dart';

class ConversionsList = _ConversionsListBase with _$ConversionsList;

abstract class _ConversionsListBase with Store {
  @observable
  List<ConversionAbs> list = teste;
  @action
  setList(List<ConversionAbs> newValue) => list = newValue;

  @observable
  int indexSelected = 0;
  @action
  setIndexSelected(int newValue) => indexSelected = newValue;

  String getFromNormal(String baseValue){
    return list[indexSelected].fromNormal(baseValue);
  }

  String getToNormal(String baseValue){
    return list[indexSelected].toNormal(baseValue);
  }
}