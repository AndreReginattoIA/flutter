import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:search_widget/search_widget.dart';
import 'package:slidy_modular/app/components/my_register_bottom_app_bar.dart';
import 'package:slidy_modular/app/components/my_register_floating_action_button.dart';
import 'package:slidy_modular/app/models/customer_model.dart';
import 'package:slidy_modular/app/modules/customer/customer_repository.dart';
import 'package:slidy_modular/app/modules/order/order_module.dart';
import 'package:slidy_modular/app/modules/order/order_register/order_register_module.dart';
import 'order_register_controller.dart';

class OrderRegisterPage extends StatefulWidget {
  final String title;
  const OrderRegisterPage({Key key, this.title = "OrderRegister"})
      : super(key: key);

  @override
  _OrderRegisterPageState createState() => _OrderRegisterPageState();
}

class _OrderRegisterPageState
    extends ModularState<OrderRegisterPage, OrderRegisterController> {
  List<CustomerModel> customer;
  CustomerRepository customerRepo = OrderRegisterModule.to.get<CustomerRepository>();

  @override
  void initState() {
    super.initState();
    customer = [CustomerModel(id: 1, name: "aaa"), CustomerModel(id: 2, name: "asdsad")] ;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Form(
        key: controller.formKey,
        child: Column(
          children: <Widget>[
            SearchWidget(
              dataList: customer, 
              popupListItemBuilder: (CustomerModel item) {
                return Text(item.name);
              }, 
              selectedItemBuilder: (CustomerModel selectedItem, VoidCallback deleteSelectedItem) {
                return Text(controller.order.customer.name);
              },
              queryBuilder: (String query, List<CustomerModel> list) {
                return list.where((CustomerModel item) => item.name.toLowerCase().contains(query.toLowerCase())).toList();
              },
            )
          ],
        ),
      ),
      floatingActionButton: MyRegisterFloatingActionButton(() {
          controller.saveProduct();
          Modular.to.pushNamed('/order');
        }
      ),
      bottomNavigationBar: MyRegisterBottomAppBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
    );
  }
}
