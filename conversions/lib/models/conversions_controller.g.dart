// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'conversions_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ConversionsController on _ConversionsControllerBase, Store {
  final _$currentIndexAtom =
      Atom(name: '_ConversionsControllerBase.currentIndex');

  @override
  int get currentIndex {
    _$currentIndexAtom.context.enforceReadPolicy(_$currentIndexAtom);
    _$currentIndexAtom.reportObserved();
    return super.currentIndex;
  }

  @override
  set currentIndex(int value) {
    _$currentIndexAtom.context.conditionallyRunInAction(() {
      super.currentIndex = value;
      _$currentIndexAtom.reportChanged();
    }, _$currentIndexAtom, name: '${_$currentIndexAtom.name}_set');
  }

  final _$valor1Atom = Atom(name: '_ConversionsControllerBase.valor1');

  @override
  String get valor1 {
    _$valor1Atom.context.enforceReadPolicy(_$valor1Atom);
    _$valor1Atom.reportObserved();
    return super.valor1;
  }

  @override
  set valor1(String value) {
    _$valor1Atom.context.conditionallyRunInAction(() {
      super.valor1 = value;
      _$valor1Atom.reportChanged();
    }, _$valor1Atom, name: '${_$valor1Atom.name}_set');
  }

  final _$_ConversionsControllerBaseActionController =
      ActionController(name: '_ConversionsControllerBase');

  @override
  dynamic setCurrentIndex(int newValue) {
    final _$actionInfo =
        _$_ConversionsControllerBaseActionController.startAction();
    try {
      return super.setCurrentIndex(newValue);
    } finally {
      _$_ConversionsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setValor1(String newValue) {
    final _$actionInfo =
        _$_ConversionsControllerBaseActionController.startAction();
    try {
      return super.setValor1(newValue);
    } finally {
      _$_ConversionsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string =
        'currentIndex: ${currentIndex.toString()},valor1: ${valor1.toString()}';
    return '{$string}';
  }
}
