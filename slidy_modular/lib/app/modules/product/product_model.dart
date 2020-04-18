import 'package:mobx/mobx.dart';
part 'product_model.g.dart';

class ProductModel = _ProductModelBase with _$ProductModel;

abstract class _ProductModelBase with Store {
  @observable 
  int id;
  @action 
  setId(int newValue) => id = newValue;

  _ProductModelBase({
      this.description,
      this.id,
  });

  @observable 
  String description;
  @action 
  setDescription(String newValue) => description = newValue;

  List<ProductModel> fromJsonList(List list) {
    if (list == null) return null;
    return list.map((item) => fromJson(item)).toList();
  }

  fromJson(Map<String, dynamic> json) => ProductModel(
      description: json["description"],
      id: json["id"],
  );

  Map<String, dynamic> toJson() => {
      "description": description,
      "id": id,
  };

}