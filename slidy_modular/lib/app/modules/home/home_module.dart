import 'package:slidy_modular/app/modules/customer/customer_module.dart';
import 'package:slidy_modular/app/modules/home/home_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:slidy_modular/app/modules/home/home_page.dart';
import 'package:slidy_modular/app/modules/order/order_module.dart';
import 'package:slidy_modular/app/modules/product/product_module.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => HomeController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => HomePage()),
        Router('/Product', module: ProductModule()),
        Router('/Customer', module: CustomerModule()),
        Router('/Order', module: OrderModule()),
      ];

  static Inject get to => Inject<HomeModule>.of();
}
