import 'dart:async';
import 'package:mvvm/login_repository.dart';
import 'package:mvvm/user_model.dart';

class PageViewModel{
  final LoginRepository repository;
  
  PageViewModel(
    this.repository
  );

  final _isloading$ = StreamController<bool>();
  Sink<bool> get isloadingIn => _isloading$.sink;
  Stream<bool> get isLoadingOut => _isloading$.stream;
  
  final _isLogin$ = StreamController<UserModel>();
  Sink<UserModel> get isloginIn => _isLogin$.sink;
  Stream<bool> get isLoginOut => _isLogin$.stream.asyncMap(login);

  Future<bool> login(UserModel user) async{
    bool isLogin;
    isloadingIn.add(true);

    try{
      isLogin = await repository.doLogin(user);  
    }catch(e){
      isLogin =  false;
    }
  
    isloadingIn.add(false);
    return isLogin;
  }

  dispose(){
    _isloading$.close();
    _isLogin$.close();
  }

}