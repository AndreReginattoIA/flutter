import 'package:mvvm/user_model.dart';

class LoginRepository {


  Future<bool> doLogin(UserModel user) async {
    //api connection
    await Future.delayed(Duration(seconds: 1));
    return user.email == 'andrereginatto93@gmail.com' && user.password == '123';
  }
}