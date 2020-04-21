// To parse this JSON data, do
//
//     final productModel = productModelFromJson(jsonString);

import 'dart:convert';

ProductModel productModelFromJson(String str) => ProductModel.fromJson(json.decode(str));

String productModelToJson(ProductModel data) => json.encode(data.toJson());

class ProductModel {
    String description;
    int id;

    ProductModel({
        this.description,
        this.id,
    });

    factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
        description: json["description"],
        id: json["id"],
    );

    Map<String, dynamic> toJson() => {
        "description": description,
        "id": id,
    };

    static List<ProductModel> fromJsonList(List list){
      if (list.isEmpty) return null;
      return list 
        .map((item) => ProductModel.fromJson(item))
        .toList();
    }
}
