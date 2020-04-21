import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:slidy_modular/app/models/customer_model.dart';
import 'package:slidy_modular/app/modules/customer/customer_register/customer_register_module.dart';
import 'package:slidy_modular/app/modules/customer/customer_register/customer_register_repository.dart';

part 'customer_register_controller.g.dart';

class CustomerRegisterController = _CustomerRegisterControllerBase
    with _$CustomerRegisterController;

abstract class _CustomerRegisterControllerBase with Store {
  final formKey = GlobalKey<FormState>();

  CustomerModel customer = CustomerModel();

  CustomerRegisterRepository repository = CustomerRegisterModule.to.get<CustomerRegisterRepository>();

  setId(int newValue) => customer.id = newValue;
  setName(String newValue) =>  customer.name = newValue;
  
  saveCustomer(){
    if(!formKey.currentState.validate()){
      return false;
    }

    formKey.currentState.save();

    repository.insertCustomer(customer.name);
  }
}
