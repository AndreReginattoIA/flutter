import 'package:flutter_modular/flutter_modular.dart';
import 'package:hasura_connect/hasura_connect.dart';
import 'package:slidy_modular/app/app_module.dart';

class CustomerRegisterRepository extends Disposable {
  final hasura = AppModule.to.get<HasuraConnect>();

  Future insertCustomer(String name) async {
    String query = """
      mutation MyMutation(\$name: String!) {
        insert_customer(objects: {name: \$name}) {
          returning {
            id
          }
        }
      }
    """;

    await hasura.mutation(query, variables: {"name": name});
  }

  //dispose will be called automatically
  @override
  void dispose() {}
}
