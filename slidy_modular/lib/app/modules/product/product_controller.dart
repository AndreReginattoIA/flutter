import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:slidy_modular/app/modules/product/product_model.dart';
import 'package:slidy_modular/app/modules/product/product_repository.dart';

part 'product_controller.g.dart';

class ProductController = _ProductControllerBase with _$ProductController;

abstract class _ProductControllerBase with Store {
  ProductRepository repository = Modular.get<ProductRepository>();

  ProductModel model = ProductModel();

  
}
