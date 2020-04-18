import 'package:flutter_modular/flutter_modular.dart';
import 'package:hasura_connect/hasura_connect.dart';

class RegisterRepository extends Disposable {
  final hasura = HasuraConnect("https://parabletest.herokuapp.com/v1/graphql");

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
