import 'package:flutter/material.dart';
import 'package:mvvm/home_page.dart';
import 'package:mvvm/login_repository.dart';
import 'package:mvvm/login_viewmodel.dart';
import 'package:mvvm/user_model.dart';

class LoginPageMVVM extends StatefulWidget {
  
  @override
  _LoginPageMVVMState createState() => _LoginPageMVVMState();
}

class _LoginPageMVVMState extends State<LoginPageMVVM> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  final _formKey = GlobalKey<FormState>();
  final user = UserModel();

  PageViewModel viewModel;

  @override
  void initState(){
    super.initState();
    viewModel = PageViewModel(LoginRepository());
    viewModel.isLoginOut.listen((isLogin){
      if (isLogin){
        loginSucess();
      } else { 
        loginError();
      }
    });
  }

  @override
  void dispose(){
    super.dispose();
    viewModel.dispose();
  }

  loginSucess(){
    Navigator.pushReplacement(context, 
    MaterialPageRoute(builder: (_) => HomePage()));
  }

  loginError(){
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
        key: _formKey,
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
                onSaved: (value) => user.email = value,
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
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Password",
                ),
                onSaved: (value) => user.password = value,
                validator: (value) {
                  if (value.isEmpty) {
                    return "the field cannot be null";
                  } else 
                    return null;
                },
              ),
              SizedBox(height: 30,),
              StreamBuilder<bool>(
                stream: viewModel.isLoadingOut,
                initialData: false,
                builder: (context, snapshot) {    
                  bool isLoading = snapshot.data;
                  return RaisedButton(
                    padding: EdgeInsets.symmetric(horizontal: 80),
                    textColor: Colors.white,
                    color: Colors.blueGrey[800],
                    child: Text("Enter"),
                    onPressed: 
                      isLoading ? null : 
                      () {
                        if (!_formKey.currentState.validate()){
                          return;
                        }
                        _formKey.currentState.save();
                        viewModel.isloginIn.add(user);
                      } 
                  );
                }),
            ],
          ),
        )
      ),
    );
  }
}