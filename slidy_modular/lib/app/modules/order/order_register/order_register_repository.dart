import 'package:flutter_modular/flutter_modular.dart';
import 'package:hasura_connect/hasura_connect.dart';
import 'package:slidy_modular/app/app_module.dart';
import 'package:slidy_modular/app/models/customer_model.dart';

class OrderRegisterRepository extends Disposable {
  final hasura = AppModule.to.get<HasuraConnect>();

    Future insertOrder(CustomerModel customer) async {
    await hasura.mutation(
      """
        mutation MyMutation(\$id_customer: int!){
          insert_order(objects: {id_customer: \$id_customer}) {
            returning {
              id
            }
          }
        }
      """
    , variables: {"id_customer": customer.id});
  }

  //dispose will be called automatically
  @override
  void dispose() {}
}
