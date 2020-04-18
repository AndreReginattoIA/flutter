import 'package:flutter_modular/flutter_modular.dart';
import 'package:hasura_connect/hasura_connect.dart';
import 'package:slidy_modular/app/modules/product/product_controller.dart';
import 'package:slidy_modular/app/modules/product/product_model.dart';

class ProductRepository extends Disposable {
  final hasura = HasuraConnect("https://parabletest.herokuapp.com/v1/graphql");

  Stream<List<ProductModel>> allProducts() {
    ProductController controller = Modular.get<ProductController>();

    Snapshot snapshot = hasura.subscription(
      """
        {
          products {
            description
            id
          }
        }

      """
    );
    
    return snapshot.map((jsonList){
      controller.model.fromJsonList(jsonList["data"]["products"]);
    });


  }

  @override
  void dispose() {
  }
}
