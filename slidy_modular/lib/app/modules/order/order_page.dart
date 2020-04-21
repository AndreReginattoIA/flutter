import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:slidy_modular/app/components/my_bottom_app_bar.dart';
import 'package:slidy_modular/app/components/my_floating_action_button.dart';
import 'package:slidy_modular/app/models/order_model.dart';
import 'package:slidy_modular/app/modules/order/order_module.dart';
import 'package:slidy_modular/app/modules/order/order_repository.dart';
import 'order_controller.dart';

class OrderPage extends StatefulWidget {
  final String title;
  const OrderPage({Key key, this.title = "Order"}) : super(key: key);

  @override
  _OrderPageState createState() => _OrderPageState();
}

class _OrderPageState extends ModularState<OrderPage, OrderController> {
  Stream<List<OrderModel>> orders;  
  OrderRepository repo = OrderModule.to.get<OrderRepository>();

  @override
  void initState() {
    super.initState();
    orders = repo.allOrders();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: StreamBuilder<List<OrderModel>>(
        stream: orders,
        builder: (context, snapshot){
          if (!snapshot.hasData)
            return Center(child: CircularProgressIndicator());
          return ListView.builder(
            itemCount: snapshot.data.length,
            itemBuilder: (context, index){
              return ListTile(
                title: Text(snapshot.data[index].id.toString()),
              );
            }
          );
        },
      ),
      floatingActionButton: MyFloatActionButton('/Order/Register'),
      bottomNavigationBar: MyBottomAppBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
