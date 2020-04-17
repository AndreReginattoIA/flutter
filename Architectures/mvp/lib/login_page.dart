import 'package:flutter/material.dart';
import 'package:mvp/home_page.dart';
import 'package:mvp/login_presenter.dart';
import 'package:mvp/login_repository.dart';

class LoginPageMVP extends StatefulWidget {
  
  @override
  _LoginPageMVPState createState() => _LoginPageMVPState();
}

class _LoginPageMVPState extends State<LoginPageMVP> implements LoginPageContract {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  
  LoginPresenter presenter;

  @override
  void initState(){
    super.initState();
    presenter = LoginPresenter(this, repository: LoginRepository());
  }

  @override
  void dispose(){
    super.dispose();
  }

  @override
  loginSucess(){
    Navigator.pushReplacement(context, 
    MaterialPageRoute(builder: (_) => HomePage()));
  }

  @override
  loginError(){
    _scaffoldKey.currentState.showSnackBar(
      SnackBar(
        content: Text("Login error"),
        backgroundColor: Colors.red, 
      )
    );
  }

  @override
  void loginManager() {
    setState(() {
      
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: Form(
        key: presenter.formKey,
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
                onSaved: presenter.userEmail,
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
                onSaved: presenter.userPassword,
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
                onPressed: 
                  presenter.isLoading ? null : presenter.login,
              ),
            ],
          ),
        )
      ),
    );
  }
}