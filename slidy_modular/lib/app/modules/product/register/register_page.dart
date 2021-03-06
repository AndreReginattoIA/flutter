import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:slidy_modular/app/components/my_register_bottom_app_bar.dart';
import 'package:slidy_modular/app/components/my_register_floating_action_button.dart';
import 'package:slidy_modular/app/modules/product/register/register_controller.dart';

class RegisterPage extends StatefulWidget {
  final String title;
  const RegisterPage({Key key, this.title = "Product Register"}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends ModularState<RegisterPage, RegisterController> {
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
                labelText: "Description",
              ),
              onSaved: controller.setDescriprion,
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
          controller.saveProduct();
          Modular.to.pushNamed('/Product');
        }
      ),
      bottomNavigationBar: MyRegisterBottomAppBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
    );
  }
}
