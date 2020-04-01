// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'numeric_conversions.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$NumericConversions on _NumericConversionsBase, Store {
  final _$descriptionAtom = Atom(name: '_NumericConversionsBase.description');

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

  final _$_NumericConversionsBaseActionController =
      ActionController(name: '_NumericConversionsBase');

  @override
  dynamic changeDescription(String newValue) {
    final _$actionInfo =
        _$_NumericConversionsBaseActionController.startAction();
    try {
      return super.changeDescription(newValue);
    } finally {
      _$_NumericConversionsBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string = 'description: ${description.toString()}';
    return '{$string}';
  }
}
