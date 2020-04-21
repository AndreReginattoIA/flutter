import 'package:hasura_connect/hasura_connect.dart';
import 'package:slidy_modular/app/app_repository.dart';
import 'package:slidy_modular/app/app_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:slidy_modular/app/app_widget.dart';
import 'package:slidy_modular/app/modules/home/home_module.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AppRepository()),
        Bind((i) => AppController()),
        Bind((i) =>
            HasuraConnect("https://parabletest.herokuapp.com/v1/graphql")),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, module: HomeModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
