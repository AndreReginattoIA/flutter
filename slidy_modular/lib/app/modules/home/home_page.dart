import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text("Products"),
              onPressed: () {
                Modular.to.pushNamed('/Product');
              }
            ),    
            RaisedButton(
              child: Text("Customers"),
              onPressed: () {
                Modular.to.pushNamed('/Customer');
              }
            ),
            RaisedButton(
              child: Text("Orders"),
              onPressed: () {
                Modular.to.pushNamed('/Order');
              }
            ),
          ],
        ),
      ),
    );
  }
}
