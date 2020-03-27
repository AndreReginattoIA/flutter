import 'package:mobx/mobx.dart';
import 'package:mobx_test/models/client.dart';
part 'controller.g.dart';

class Controller = _ControllerBase with _$Controller;

abstract class _ControllerBase with Store {
  var cliente = Client();

  String validateName(){
    if (cliente.name == null || cliente.name.isEmpty)
      return "este campo é obrigatório";

    return null;
  }

  String validateEmail(){
    if (cliente.email == null || cliente.email.isEmpty)
      return "este campo é obrigatório";
    else if (!cliente.email.contains("@"))
      return "informe o email corretamente";

    return null;
  }

  String validateCPF(){
    if (cliente.cpf == null || cliente.cpf.isEmpty)
      return "este campo é obrigatório";

    return null;
  }
}