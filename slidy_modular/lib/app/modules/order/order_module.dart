import 'package:slidy_modular/app/modules/order/order_register/order_register_module.dart';
import 'package:slidy_modular/app/modules/order/order_register/order_register_repository.dart';
import 'package:slidy_modular/app/modules/order/order_repository.dart';
import 'package:slidy_modular/app/modules/order/order_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:slidy_modular/app/modules/order/order_page.dart';

class OrderModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => OrderRegisterRepository()),
        Bind((i) => OrderRepository()),
        Bind((i) => OrderController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => OrderPage()),
        Router('/Register', module: OrderRegisterModule())
      ];

  static Inject get to => Inject<OrderModule>.of();
}
