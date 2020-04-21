import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:chat_hasura/app/app_repository.dart';
import 'package:flutter/cupertino.dart';

import '../../app_bloc.dart';
import '../../app_module.dart';

class LoginBloc extends BlocBase {
  final AppRepository repository;
  final appBloc = AppModule.to.bloc<AppBloc>();

  var controller = TextEditingController();

  LoginBloc(this.repository);

  Future<bool> login() async {
    try{
      var user = await repository.getUser(controller.text);
      appBloc.userController.add(user);
      return true;
    } catch(ex) {
      print(ex);
      return false;
    }
  }

  //dispose will be called automatically by closing its streams
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
