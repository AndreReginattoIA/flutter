import 'package:slidy_modular/app/modules/product/product_page.dart';
import 'package:slidy_modular/app/modules/product/register/register_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:slidy_modular/app/modules/product/product_controller.dart';
import 'package:slidy_modular/app/modules/product/register/register_page.dart';

class ProductModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => RegisterController()),
        Bind((i) => ProductController()),
      ];

  @override
  List<Router> get routers =>[
        Router(Modular.initialRoute, child: (_, args) => ProductPage()),
        Router('/Register', child: (_, args) => RegisterPage())
      ];

  static Inject get to => Inject<ProductModule>.of();
}
