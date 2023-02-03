// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'focus_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$FocusStore on _FocusStore, Store {
  Computed<bool>? _$formOkComputed;

  @override
  bool get formOk => (_$formOkComputed ??=
          Computed<bool>(() => super.formOk, name: '_FocusStore.formOk'))
      .value;

  late final _$goalAtom = Atom(name: '_FocusStore.goal', context: context);

  @override
  String get goal {
    _$goalAtom.reportRead();
    return super.goal;
  }

  @override
  set goal(String value) {
    _$goalAtom.reportWrite(value, super.goal, () {
      super.goal = value;
    });
  }

  late final _$taskAtom = Atom(name: '_FocusStore.task', context: context);

  @override
  String get task {
    _$taskAtom.reportRead();
    return super.task;
  }

  @override
  set task(String value) {
    _$taskAtom.reportWrite(value, super.task, () {
      super.task = value;
    });
  }

  late final _$_FocusStoreActionController =
      ActionController(name: '_FocusStore', context: context);

  @override
  dynamic saveFocus() {
    final _$actionInfo = _$_FocusStoreActionController.startAction(
        name: '_FocusStore.saveFocus');
    try {
      return super.saveFocus();
    } finally {
      _$_FocusStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic getFocusList() {
    final _$actionInfo = _$_FocusStoreActionController.startAction(
        name: '_FocusStore.getFocusList');
    try {
      return super.getFocusList();
    } finally {
      _$_FocusStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic clearList() {
    final _$actionInfo = _$_FocusStoreActionController.startAction(
        name: '_FocusStore.clearList');
    try {
      return super.clearList();
    } finally {
      _$_FocusStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic updatetask(String value) {
    final _$actionInfo = _$_FocusStoreActionController.startAction(
        name: '_FocusStore.updatetask');
    try {
      return super.updatetask(value);
    } finally {
      _$_FocusStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic updategoal(String value) {
    final _$actionInfo = _$_FocusStoreActionController.startAction(
        name: '_FocusStore.updategoal');
    try {
      return super.updategoal(value);
    } finally {
      _$_FocusStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
goal: ${goal},
task: ${task},
formOk: ${formOk}
    ''';
  }
}
