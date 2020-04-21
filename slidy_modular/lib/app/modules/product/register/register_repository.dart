import 'package:flutter_modular/flutter_modular.dart';
import 'package:hasura_connect/hasura_connect.dart';

import '../../../app_module.dart';

class RegisterRepository extends Disposable {
  final hasura = AppModule.to.get<HasuraConnect>();

    Future insertProduct(String newProduct) async {
    await hasura.mutation(
      """
        mutation MyMutation(\$description: String!) {
          insert_products(objects: {description: \$description}) {
            returning {
              id
            }
          }
        }

      """
    , variables: {"description": newProduct});
  }


  @override
  void dispose() {
  }
}
