import 'package:flutter/material.dart';
import 'package:mvc/home_page.dart';
import 'package:mvc/login_controller.dart';
import 'package:mvc/login_repository.dart';

class LoginPageMVC extends StatefulWidget {
  
  @override
  _LoginPageMVCState createState() => _LoginPageMVCState();
}

class _LoginPageMVCState extends State<LoginPageMVC> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  
  bool _isLoading = false;
  LoginController controller;

  @override
  void initState(){
    super.initState();
    controller = LoginController(LoginRepository());
  }

  @override
  void dispose(){
    super.dispose();
  }

  _loginSucess(){
    Navigator.pushReplacement(context, 
    MaterialPageRoute(builder: (_) => HomePage()));
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
        key: controller.formKey,
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
                onSaved: controller.userEmail,
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
                onSaved: controller.userPassword,
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
                color: Colors.blueGrey[800],
                child: Text("Enter"),
                onPressed: _isLoading ? null : 
                  () async{
                  setState(() {
                    _isLoading = true;
                  });
                  if (await controller.login()){
                    _loginSucess();
                  } else {
                    _loginError();
                  }
                  setState(() {
                    _isLoading = false;
                  });
                },
              ),
            ],
          ),
        )
      ),
    );
  }
}