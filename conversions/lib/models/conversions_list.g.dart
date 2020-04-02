// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'conversions_list.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ConversionsList on _ConversionsListBase, Store {
  final _$listAtom = Atom(name: '_ConversionsListBase.list');

  @override
  List<Conversions> get list {
    _$listAtom.context.enforceReadPolicy(_$listAtom);
    _$listAtom.reportObserved();
    return super.list;
  }

  @override
  set list(List<Conversions> value) {
    _$listAtom.context.conditionallyRunInAction(() {
      super.list = value;
      _$listAtom.reportChanged();
    }, _$listAtom, name: '${_$listAtom.name}_set');
  }

  final _$selectedAtom = Atom(name: '_ConversionsListBase.selected');

  @override
  String get selected {
    _$selectedAtom.context.enforceReadPolicy(_$selectedAtom);
    _$selectedAtom.reportObserved();
    return super.selected;
  }

  @override
  set selected(String value) {
    _$selectedAtom.context.conditionallyRunInAction(() {
      super.selected = value;
      _$selectedAtom.reportChanged();
    }, _$selectedAtom, name: '${_$selectedAtom.name}_set');
  }

  final _$_ConversionsListBaseActionController =
      ActionController(name: '_ConversionsListBase');

  @override
  dynamic setSelected(String newValue) {
    final _$actionInfo = _$_ConversionsListBaseActionController.startAction();
    try {
      return super.setSelected(newValue);
    } finally {
      _$_ConversionsListBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string = 'list: ${list.toString()},selected: ${selected.toString()}';
    return '{$string}';
  }
}
