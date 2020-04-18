import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:slidy_modular/app/modules/product/product_model.dart';
import 'package:slidy_modular/app/modules/product/register/register_repository.dart';
part 'register_controller.g.dart';

class RegisterController = _RegisterControllerBase with _$RegisterController;

abstract class _RegisterControllerBase with Store {
  final formKey = GlobalKey<FormState>();
  ProductModel product = ProductModel();

  RegisterRepository repository = Modular.get<RegisterRepository>();

  setId(int newValue) => product.id = newValue;
  setDescriprion(String newValue) =>  product.description = newValue;
  
  saveProduct(){
    if(!formKey.currentState.validate()){
      return false;
    }

    formKey.currentState.save();

    repository.insertProduct(product.description);
  }
}