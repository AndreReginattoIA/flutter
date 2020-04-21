import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:slidy_modular/app/components/my_bottom_app_bar.dart';
import 'package:slidy_modular/app/components/my_floating_action_button.dart';
import 'package:slidy_modular/app/models/customer_model.dart';
import 'package:slidy_modular/app/modules/customer/customer_module.dart';
import 'package:slidy_modular/app/modules/customer/customer_repository.dart';
import 'customer_controller.dart';

class CustomerPage extends StatefulWidget {
  final String title;
  const CustomerPage({Key key, this.title = "Customer"}) : super(key: key);

  @override
  _CustomerPageState createState() => _CustomerPageState();
}

class _CustomerPageState extends ModularState<CustomerPage, CustomerController> {
  CustomerRepository repo = CustomerModule.to.get<CustomerRepository>();
  Stream<List<CustomerModel>> customers;
  var _tapPosition;

  static const options = ['order']; 

  @override
  void initState() {
    super.initState();
    customers = repo.allCustomers();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: StreamBuilder<List<CustomerModel>>(
        stream: customers,
        builder: (context, snapshot){
          if (!snapshot.hasData)
            return Center(child: CircularProgressIndicator());
          return ListView.builder(
            itemCount: snapshot.data.length,
            itemBuilder: (context, index){
              if(!snapshot.hasData)
                return Center(child: CircularProgressIndicator());
              return ListTile(
                  title: Text(snapshot.data[index].name),
              );
            },
            
          );
        } 
      ),
      floatingActionButton: MyFloatActionButton('/Customer/Register'),
      bottomNavigationBar: MyBottomAppBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
