import 'package:slidy_modular/app/modules/customer/customer_register/customer_register_repository.dart';
import 'package:slidy_modular/app/modules/customer/customer_register/customer_register_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:slidy_modular/app/modules/customer/customer_register/customer_register_page.dart';

class CustomerRegisterModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => CustomerRegisterRepository()),
        Bind((i) => CustomerRegisterController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute,
            child: (_, args) => CustomerRegisterPage()),
      ];

  static Inject get to => Inject<CustomerRegisterModule>.of();
}
