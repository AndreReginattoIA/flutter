// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'memory.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Memory on _MemoryBase, Store {
  final _$AAtom = Atom(name: '_MemoryBase.A');

  @override
  int get A {
    _$AAtom.context.enforceReadPolicy(_$AAtom);
    _$AAtom.reportObserved();
    return super.A;
  }

  @override
  set A(int value) {
    _$AAtom.context.conditionallyRunInAction(() {
      super.A = value;
      _$AAtom.reportChanged();
    }, _$AAtom, name: '${_$AAtom.name}_set');
  }

  final _$BAtom = Atom(name: '_MemoryBase.B');

  @override
  int get B {
    _$BAtom.context.enforceReadPolicy(_$BAtom);
    _$BAtom.reportObserved();
    return super.B;
  }

  @override
  set B(int value) {
    _$BAtom.context.conditionallyRunInAction(() {
      super.B = value;
      _$BAtom.reportChanged();
    }, _$BAtom, name: '${_$BAtom.name}_set');
  }

  final _$CAtom = Atom(name: '_MemoryBase.C');

  @override
  int get C {
    _$CAtom.context.enforceReadPolicy(_$CAtom);
    _$CAtom.reportObserved();
    return super.C;
  }

  @override
  set C(int value) {
    _$CAtom.context.conditionallyRunInAction(() {
      super.C = value;
      _$CAtom.reportChanged();
    }, _$CAtom, name: '${_$CAtom.name}_set');
  }

  final _$deltaAtom = Atom(name: '_MemoryBase.delta');

  @override
  int get delta {
    _$deltaAtom.context.enforceReadPolicy(_$deltaAtom);
    _$deltaAtom.reportObserved();
    return super.delta;
  }

  @override
  set delta(int value) {
    _$deltaAtom.context.conditionallyRunInAction(() {
      super.delta = value;
      _$deltaAtom.reportChanged();
    }, _$deltaAtom, name: '${_$deltaAtom.name}_set');
  }

  final _$x1Atom = Atom(name: '_MemoryBase.x1');

  @override
  double get x1 {
    _$x1Atom.context.enforceReadPolicy(_$x1Atom);
    _$x1Atom.reportObserved();
    return super.x1;
  }

  @override
  set x1(double value) {
    _$x1Atom.context.conditionallyRunInAction(() {
      super.x1 = value;
      _$x1Atom.reportChanged();
    }, _$x1Atom, name: '${_$x1Atom.name}_set');
  }

  final _$x2Atom = Atom(name: '_MemoryBase.x2');

  @override
  double get x2 {
    _$x2Atom.context.enforceReadPolicy(_$x2Atom);
    _$x2Atom.reportObserved();
    return super.x2;
  }

  @override
  set x2(double value) {
    _$x2Atom.context.conditionallyRunInAction(() {
      super.x2 = value;
      _$x2Atom.reportChanged();
    }, _$x2Atom, name: '${_$x2Atom.name}_set');
  }

  final _$_MemoryBaseActionController = ActionController(name: '_MemoryBase');

  @override
  dynamic changeA(int newValue) {
    final _$actionInfo = _$_MemoryBaseActionController.startAction();
    try {
      return super.changeA(newValue);
    } finally {
      _$_MemoryBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changeB(int newValue) {
    final _$actionInfo = _$_MemoryBaseActionController.startAction();
    try {
      return super.changeB(newValue);
    } finally {
      _$_MemoryBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changeC(int newValue) {
    final _$actionInfo = _$_MemoryBaseActionController.startAction();
    try {
      return super.changeC(newValue);
    } finally {
      _$_MemoryBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changeDelta() {
    final _$actionInfo = _$_MemoryBaseActionController.startAction();
    try {
      return super.changeDelta();
    } finally {
      _$_MemoryBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changeX1() {
    final _$actionInfo = _$_MemoryBaseActionController.startAction();
    try {
      return super.changeX1();
    } finally {
      _$_MemoryBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changeX2() {
    final _$actionInfo = _$_MemoryBaseActionController.startAction();
    try {
      return super.changeX2();
    } finally {
      _$_MemoryBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string =
        'A: ${A.toString()},B: ${B.toString()},C: ${C.toString()},delta: ${delta.toString()},x1: ${x1.toString()},x2: ${x2.toString()}';
    return '{$string}';
  }
}
