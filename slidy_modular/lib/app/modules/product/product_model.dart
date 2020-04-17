import 'package:mobx/mobx.dart';
part 'product_model.g.dart';

class Product = _ProductBase with _$Product;

abstract class _ProductBase with Store {
  @observable 
  int id;
  @action 
  setId(int newValue) => id = newValue;

  @observable 
  String description;
  @action 
  setDescription(String newValue) => description = newValue;
}