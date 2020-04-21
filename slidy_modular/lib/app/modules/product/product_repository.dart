import 'package:flutter_modular/flutter_modular.dart';
import 'package:hasura_connect/hasura_connect.dart';
import 'package:slidy_modular/app/app_module.dart';
import 'package:slidy_modular/app/models/product_model.dart';

class ProductRepository extends Disposable {
  final hasura = AppModule.to.get<HasuraConnect>();

  Stream<List<ProductModel>> allProducts(){
    var query =
      """
        subscription MySubscription {
          products {
            description
            id
          }
        }
      """
    ;

    Snapshot snapshot = hasura .subscription(query);
    return snapshot
      .map((jsonList) => ProductModel.fromJsonList(jsonList["data"]["products"]),
    );
  }

  @override
  void dispose() {
    
  }
}
