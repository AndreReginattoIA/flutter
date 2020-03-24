import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_test/models/controller.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final controller = Controller();


  _textField({String title, onChange, String Function() errorText}){
    return TextField(
      onChanged: onChange,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: title,
        errorText: errorText == null ? null : errorText(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding( 
      padding: const EdgeInsets.all(8),
      child: Column(
        children: <Widget>[
          Observer(
            builder: (_) { 
              return _textField(
                title: 'Name',
                onChange: controller.cliente.changeName,
                errorText: controller.validateName,
              );
           }, 
          ),
          Observer(
            builder: (_){
              return _textField(
                title: 'Email',
                onChange: controller.cliente.changeEmail,
                errorText: controller.validateEmail,
              );
            }
          ),
          Observer(
            builder: (_) {
              return  _textField(
                title: 'CPF', 
                onChange: controller.cliente.changeCPF,
                errorText: controller.validateCPF,
              );
            }
          ),
        ],
      ),
      ),
    );
  }
}
