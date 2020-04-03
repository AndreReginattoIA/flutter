// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'conversions_list.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ConversionsList on _ConversionsListBase, Store {
  final _$listAtom = Atom(name: '_ConversionsListBase.list');

  @override
  List<ConversionAbs> get list {
    _$listAtom.context.enforceReadPolicy(_$listAtom);
    _$listAtom.reportObserved();
    return super.list;
  }

  @override
  set list(List<ConversionAbs> value) {
    _$listAtom.context.conditionallyRunInAction(() {
      super.list = value;
      _$listAtom.reportChanged();
    }, _$listAtom, name: '${_$listAtom.name}_set');
  }

  final _$indexSelectedAtom = Atom(name: '_ConversionsListBase.indexSelected');

  @override
  int get indexSelected {
    _$indexSelectedAtom.context.enforceReadPolicy(_$indexSelectedAtom);
    _$indexSelectedAtom.reportObserved();
    return super.indexSelected;
  }

  @override
  set indexSelected(int value) {
    _$indexSelectedAtom.context.conditionallyRunInAction(() {
      super.indexSelected = value;
      _$indexSelectedAtom.reportChanged();
    }, _$indexSelectedAtom, name: '${_$indexSelectedAtom.name}_set');
  }

  final _$_ConversionsListBaseActionController =
      ActionController(name: '_ConversionsListBase');

  @override
  dynamic setList(List<ConversionAbs> newValue) {
    final _$actionInfo = _$_ConversionsListBaseActionController.startAction();
    try {
      return super.setList(newValue);
    } finally {
      _$_ConversionsListBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setIndexSelected(int newValue) {
    final _$actionInfo = _$_ConversionsListBaseActionController.startAction();
    try {
      return super.setIndexSelected(newValue);
    } finally {
      _$_ConversionsListBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string =
        'list: ${list.toString()},indexSelected: ${indexSelected.toString()}';
    return '{$string}';
  }
}
