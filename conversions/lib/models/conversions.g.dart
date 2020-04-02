// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'conversions.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Conversions on _ConversionsBase, Store {
  final _$descriptionAtom = Atom(name: '_ConversionsBase.description');

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

  final _$_ConversionsBaseActionController =
      ActionController(name: '_ConversionsBase');

  @override
  dynamic changeDescription(String newValue) {
    final _$actionInfo = _$_ConversionsBaseActionController.startAction();
    try {
      return super.changeDescription(newValue);
    } finally {
      _$_ConversionsBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string = 'description: ${description.toString()}';
    return '{$string}';
  }
}
