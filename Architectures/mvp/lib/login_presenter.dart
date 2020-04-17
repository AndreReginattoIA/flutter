import 'package:flutter/material.dart';
import 'package:mvp/login_repository.dart';
import 'package:mvp/user_model.dart';

abstract class LoginPageContract {
  void loginSucess();
  void loginError();
  void loginManager();
}

class LoginPresenter{
  final formKey = GlobalKey<FormState>();
  
  final LoginRepository repository;
  final LoginPageContract viewContract;
  bool isLoading = false;

  LoginPresenter(this.viewContract, {this.repository});

  UserModel user = UserModel();

  userEmail(String value) => user.email = value;
  userPassword(String value) => user.password = value;

  login() async{
    bool isLogin;
    isLoading = true;
    viewContract.loginManager();
    if(!formKey.currentState.validate()){
      isLogin = false;
    } else {
      formKey.currentState.save();
      
      try{
        isLogin = await repository.doLogin(user);  
      }catch(e){
        isLogin =  false;
      }
    }

    if (isLogin){
      viewContract.loginSucess();
    } else {
      viewContract.loginError();
    }

    isLoading = false;
    viewContract.loginManager();
  }
}