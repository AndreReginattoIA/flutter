// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'numeric_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$NumericController on NumericControllerBase, Store {
  final _$_selectedAtom = Atom(name: 'NumericControllerBase._selected');

  @override
  String get _selected {
    _$_selectedAtom.context.enforceReadPolicy(_$_selectedAtom);
    _$_selectedAtom.reportObserved();
    return super._selected;
  }

  @override
  set _selected(String value) {
    _$_selectedAtom.context.conditionallyRunInAction(() {
      super._selected = value;
      _$_selectedAtom.reportChanged();
    }, _$_selectedAtom, name: '${_$_selectedAtom.name}_set');
  }

  @override
  String toString() {
    final string = '';
    return '{$string}';
  }
}
