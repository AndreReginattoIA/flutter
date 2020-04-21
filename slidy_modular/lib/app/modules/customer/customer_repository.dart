import 'package:flutter_modular/flutter_modular.dart';
import 'package:hasura_connect/hasura_connect.dart';
import 'package:slidy_modular/app/app_module.dart';
import 'package:slidy_modular/app/models/customer_model.dart';

class CustomerRepository extends Disposable {
  final hasura = AppModule.to.get<HasuraConnect>();

  Stream<List<CustomerModel>> allCustomers(){
    var query =
      """
        subscription MySubscription {
          customer {
            name
            id
          }
        }
      """
    ;

    Snapshot snapshot = hasura.subscription(query);
    return snapshot
      .map((jsonList) => CustomerModel.fromJsonList(jsonList["data"]["customer"]),
    );
  }

  Future<List<CustomerModel>> allCustomersLK() async{
    var query =
      """
        query MyQuery {
          customer {
            name
            id
          }
        }
      """
    ;

    var data = await hasura.query(query);
    return data
      .map((jsonList) => CustomerModel.fromJsonList(jsonList["data"]["customer"]),
    );
  }

  //dispose will be called automatically
  @override
  void dispose() {}
}
