import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:slidy_modular/app/components/my_register_bottom_app_bar.dart';
import 'package:slidy_modular/app/components/my_register_floating_action_button.dart';
import 'customer_register_controller.dart';

class CustomerRegisterPage extends StatefulWidget {
  final String title;
  const CustomerRegisterPage({Key key, this.title = "CustomerRegister"})
      : super(key: key);

  @override
  _CustomerRegisterPageState createState() => _CustomerRegisterPageState();
}

class _CustomerRegisterPageState
    extends ModularState<CustomerRegisterPage, CustomerRegisterController> {
  //use 'controller' variable to access controller

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
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Name",
              ),
              onSaved: controller.setName,
              validator: (value) {
                if (value.isEmpty) {
                  return "the field cannot be null";
                } else  
                  return null;
              },
            ),
          ],
        ),
      ),
      floatingActionButton: MyRegisterFloatingActionButton(() {
          controller.saveCustomer();
          Modular.to.pushNamed('/Customer');
        }
      ),
      bottomNavigationBar: MyRegisterBottomAppBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
    );
  }
}
