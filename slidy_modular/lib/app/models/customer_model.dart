// To parse this JSON data, do
//
//     final customerModel = customerModelFromJson(jsonString);

import 'dart:convert';

CustomerModel customerModelFromJson(String str) => CustomerModel.fromJson(json.decode(str));

String customerModelToJson(CustomerModel data) => json.encode(data.toJson());

class CustomerModel {
  int id;
  String name;

  CustomerModel({
    this.id,
    this.name,
  });

  factory CustomerModel.fromJson(Map<String, dynamic> json) => CustomerModel(
      id: json["id"],
      name: json["name"],
  );

  Map<String, dynamic> toJson() => {
      "id": id,
      "name": name,
  };

  static List<CustomerModel> fromJsonList(List list){
    if (list.isEmpty) return null;

    return list
    .map((item) => CustomerModel.fromJson(item))
    .toList();
  }
}
