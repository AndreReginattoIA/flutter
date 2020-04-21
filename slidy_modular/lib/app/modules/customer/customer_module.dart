import 'package:slidy_modular/app/modules/customer/customer_register/customer_register_module.dart';
import 'package:slidy_modular/app/modules/customer/customer_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:slidy_modular/app/modules/customer/customer_page.dart';
import 'package:slidy_modular/app/modules/customer/customer_repository.dart';

class CustomerModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => CustomerRepository()),
        Bind((i) => CustomerController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => CustomerPage()),
        Router('/Register', module: CustomerRegisterModule())
      ];

  static Inject get to => Inject<CustomerModule>.of();
}
