// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Client on _ClientBase, Store {
  final _$nameAtom = Atom(name: '_ClientBase.name');

  @override
  String get name {
    _$nameAtom.context.enforceReadPolicy(_$nameAtom);
    _$nameAtom.reportObserved();
    return super.name;
  }

  @override
  set name(String value) {
    _$nameAtom.context.conditionallyRunInAction(() {
      super.name = value;
      _$nameAtom.reportChanged();
    }, _$nameAtom, name: '${_$nameAtom.name}_set');
  }

  final _$emailAtom = Atom(name: '_ClientBase.email');

  @override
  String get email {
    _$emailAtom.context.enforceReadPolicy(_$emailAtom);
    _$emailAtom.reportObserved();
    return super.email;
  }

  @override
  set email(String value) {
    _$emailAtom.context.conditionallyRunInAction(() {
      super.email = value;
      _$emailAtom.reportChanged();
    }, _$emailAtom, name: '${_$emailAtom.name}_set');
  }

  final _$cpfAtom = Atom(name: '_ClientBase.cpf');

  @override
  String get cpf {
    _$cpfAtom.context.enforceReadPolicy(_$cpfAtom);
    _$cpfAtom.reportObserved();
    return super.cpf;
  }

  @override
  set cpf(String value) {
    _$cpfAtom.context.conditionallyRunInAction(() {
      super.cpf = value;
      _$cpfAtom.reportChanged();
    }, _$cpfAtom, name: '${_$cpfAtom.name}_set');
  }

  final _$_ClientBaseActionController = ActionController(name: '_ClientBase');

  @override
  dynamic changeName(String value) {
    final _$actionInfo = _$_ClientBaseActionController.startAction();
    try {
      return super.changeName(value);
    } finally {
      _$_ClientBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changeEmail(String value) {
    final _$actionInfo = _$_ClientBaseActionController.startAction();
    try {
      return super.changeEmail(value);
    } finally {
      _$_ClientBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changeCPF(String value) {
    final _$actionInfo = _$_ClientBaseActionController.startAction();
    try {
      return super.changeCPF(value);
    } finally {
      _$_ClientBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string =
        'name: ${name.toString()},email: ${email.toString()},cpf: ${cpf.toString()}';
    return '{$string}';
  }
}
