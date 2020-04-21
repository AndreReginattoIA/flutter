import 'package:chat_hasura/app/modules/login/login_bloc.dart';
import 'package:chat_hasura/app/modules/login/login_module.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  final String title;
  const LoginPage({Key key, this.title = "Login"}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final bloc = LoginModule.to.bloc<LoginBloc>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          TextField(
            controller: bloc.controller,
            decoration: InputDecoration(
              labelText: "Name"
            ),
          ),
          RaisedButton(
            child: Text("Acessar"),
            onPressed: () {
              bloc.login();
            }
          ),
        ],
      ),
    );
  }
}
