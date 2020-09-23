// GENERATED CODE - DO NOT MODIFY BY HAND

part of '_keyboard.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Controller_key on _ControllerKey, Store {
  final _$counterAtom = Atom(name: '_ControllerKey.counter');

  @override
  String get counter {
    _$counterAtom.context.enforceReadPolicy(_$counterAtom);
    _$counterAtom.reportObserved();
    return super.counter;
  }

  @override
  set counter(String value) {
    _$counterAtom.context.conditionallyRunInAction(() {
      super.counter = value;
      _$counterAtom.reportChanged();
    }, _$counterAtom, name: '${_$counterAtom.name}_set');
  }

  final _$_ControllerKeyActionController =
      ActionController(name: '_ControllerKey');

  @override
  void increment(String numero) {
    final _$actionInfo = _$_ControllerKeyActionController.startAction();
    try {
      return super.increment(numero);
    } finally {
      _$_ControllerKeyActionController.endAction(_$actionInfo);
    }
  }

  @override
  void decrement() {
    final _$actionInfo = _$_ControllerKeyActionController.startAction();
    try {
      return super.decrement();
    } finally {
      _$_ControllerKeyActionController.endAction(_$actionInfo);
    }
  }

  @override
  void clear() {
    final _$actionInfo = _$_ControllerKeyActionController.startAction();
    try {
      return super.clear();
    } finally {
      _$_ControllerKeyActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string = 'counter: ${counter.toString()}';
    return '{$string}';
  }
}
