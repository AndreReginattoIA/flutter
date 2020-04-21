// To parse this JSON data, do
//
//     final orderModel = orderModelFromJson(jsonString);

import 'dart:convert';

import 'package:slidy_modular/app/models/customer_model.dart';

OrderModel orderModelFromJson(String str) => OrderModel.fromJson(json.decode(str));

String orderModelToJson(OrderModel data) => json.encode(data.toJson());

class OrderModel {
    int id;
    CustomerModel customer;

    OrderModel({
        this.id,
        this.customer,
    });

    factory OrderModel.fromJson(Map<String, dynamic> json) => OrderModel(
        id: json["id"],
        customer: CustomerModel.fromJson(json["customer"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "customer": customer.toJson(),
    };

    static List<OrderModel> fromJsonList(List list){
      if (list.isEmpty) return null;
      return list 
        .map((item) => OrderModel.fromJson(item))
        .toList();
    }
}
