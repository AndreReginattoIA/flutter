import 'package:flutter_modular/flutter_modular.dart';
import 'package:hasura_connect/hasura_connect.dart';
import 'package:slidy_modular/app/app_module.dart';

class AppRepository extends Disposable {
  final hasura = AppModule.to.get<HasuraConnect>();

  //dispose will be called automatically
  @override
  void dispose() {
  
  }
}
