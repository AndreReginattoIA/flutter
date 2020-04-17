// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Product on _ProductBase, Store {
  final _$idAtom = Atom(name: '_ProductBase.id');

  @override
  int get id {
    _$idAtom.context.enforceReadPolicy(_$idAtom);
    _$idAtom.reportObserved();
    return super.id;
  }

  @override
  set id(int value) {
    _$idAtom.context.conditionallyRunInAction(() {
      super.id = value;
      _$idAtom.reportChanged();
    }, _$idAtom, name: '${_$idAtom.name}_set');
  }

  final _$descriptionAtom = Atom(name: '_ProductBase.description');

  @override
  String get description {
    _$descriptionAtom.context.enforceReadPolicy(_$descriptionAtom);
    _$descriptionAtom.reportObserved();
    return super.description;
  }

  @override
  set description(String value) {
    _$descriptionAtom.context.conditionallyRunInAction(() {
      super.description = value;
      _$descriptionAtom.reportChanged();
    }, _$descriptionAtom, name: '${_$descriptionAtom.name}_set');
  }

  final _$_ProductBaseActionController = ActionController(name: '_ProductBase');

  @override
  dynamic setId(int newValue) {
    final _$actionInfo = _$_ProductBaseActionController.startAction();
    try {
      return super.setId(newValue);
    } finally {
      _$_ProductBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setDescription(String newValue) {
    final _$actionInfo = _$_ProductBaseActionController.startAction();
    try {
      return super.setDescription(newValue);
    } finally {
      _$_ProductBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string =
        'id: ${id.toString()},description: ${description.toString()}';
    return '{$string}';
  }
}
