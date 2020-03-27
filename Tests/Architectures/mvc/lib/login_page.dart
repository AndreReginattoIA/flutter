import 'package:flutter/material.dart';
import 'package:mvc/home_page.dart';

class LoginPageMVC extends StatefulWidget {
  
  @override
  _LoginPageMVCState createState() => _LoginPageMVCState();
}

class _LoginPageMVCState extends State<LoginPageMVC> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  final _formKey = GlobalKey<FormState>();

  @override
  void initState(){
    super.initState();
  }

  @override
  void dispose(){
    super.dispose();
  }

  _loginSucess(){
    Navigator.pushReplacement(context, 
    MaterialPageRoute(builder: (_) => Home_Page()));
  }

  _loginError(){
    _scaffoldKey.currentState.showSnackBar(
      SnackBar(
        content: Text("Login error"),
        backgroundColor: Colors.red, 
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: Form(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Email",
                ),
                validator: (value) {
                  if (value.isEmpty) {
                    return "the field cannot be null";
                  } else if (!value.contains("@")) {
                    return "Email it's not valid";
                  } else  
                    return null;
                },
              ),
              SizedBox(height: 10,),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Password",
                ),
                validator: (value) {
                  if (value.isEmpty) {
                    return "the field cannot be null";
                  } else 
                    return null;
                },
              ),
              SizedBox(height: 30,),
              RaisedButton(
                padding: EdgeInsets.symmetric(horizontal: 80),
                textColor: Colors.white,
                color: Colors.blue,
                child: Text("Enter"),
                onPressed: () {
                  if (true) {
                    _loginSucess();
                  } else {
                    _loginError();
                  }
                }
              ),
            ],
          ),
        )
      ),
    );
  }
}