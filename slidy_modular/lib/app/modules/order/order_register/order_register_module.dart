import 'package:slidy_modular/app/modules/customer/customer_repository.dart';
import 'package:slidy_modular/app/modules/order/order_register/order_register_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:slidy_modular/app/modules/order/order_register/order_register_page.dart';
import 'package:slidy_modular/app/modules/order/order_register/order_register_repository.dart';
import 'package:slidy_modular/app/modules/order/order_repository.dart';

class OrderRegisterModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => OrderRepository()),
        Bind((i) => CustomerRepository()),
        Bind((i) => OrderRegisterController()),
        Bind((i) => OrderRegisterRepository()),

        
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => OrderRegisterPage()),
      ];

  static Inject get to => Inject<OrderRegisterModule>.of();
}
