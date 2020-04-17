import 'package:mobx/mobx.dart';
import 'package:slidy_modular/app/modules/product/product_model.dart';

part 'product_controller.g.dart';

class ProductController = _ProductControllerBase with _$ProductController;

abstract class _ProductControllerBase with Store {
  Product product;
}
