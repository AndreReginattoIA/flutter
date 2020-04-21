import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:slidy_modular/app/models/customer_model.dart';
import 'package:slidy_modular/app/models/order_model.dart';
import 'package:slidy_modular/app/modules/order/order_register/order_register_module.dart';
import 'package:slidy_modular/app/modules/order/order_register/order_register_repository.dart';

part 'order_register_controller.g.dart';

class OrderRegisterController = _OrderRegisterControllerBase
    with _$OrderRegisterController;

abstract class _OrderRegisterControllerBase with Store {
  final formKey = GlobalKey<FormState>();
  
  OrderModel order = OrderModel();

  OrderRegisterRepository repository = OrderRegisterModule.to.get<OrderRegisterRepository>();

  setId(int newValue) => order.id = newValue;
  setCustomer(CustomerModel newValue) =>  order.customer = newValue;
  
  saveProduct(){
    if(!formKey.currentState.validate()){
      return false;
    }

    formKey.currentState.save();

    repository.insertOrder(order.customer);
  }
}
