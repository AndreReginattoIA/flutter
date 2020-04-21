import 'package:flutter_modular/flutter_modular.dart';
import 'package:hasura_connect/hasura_connect.dart';
import 'package:slidy_modular/app/app_module.dart';
import 'package:slidy_modular/app/models/order_model.dart';

class OrderRepository extends Disposable {
  final hasura = AppModule.to.get<HasuraConnect>();

  Stream<List<OrderModel>> allOrders(){
    var query ="""
      subscription MySubscription {
        order {
          id
          customer {
            id
            name
          }
        }
      }
    """;

    Snapshot snapshot = hasura .subscription(query);
    return snapshot
      .map((jsonList) => OrderModel.fromJsonList(jsonList["data"]["order"]),
    );
  }

  //dispose will be called automatically
  @override
  void dispose() {}
}
