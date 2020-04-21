import 'package:chat_hasura/app/modules/login/login_module.dart';
import 'package:flutter/material.dart';

import 'app_bloc.dart';
import 'app_module.dart';
import 'modules/home/home_module.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bloc = AppModule.to.bloc<AppBloc>();
    return MaterialApp(
      title: 'Flutter Slidy',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: StreamBuilder(
        stream: bloc.userController,
        builder: (context, snapshot){
          return snapshot.hasData ? HomeModule() : LoginModule();
        } 
      ),
    );
  }
}
