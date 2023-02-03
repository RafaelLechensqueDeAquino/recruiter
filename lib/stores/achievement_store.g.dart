// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'achievement_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$AchievementStore on _AchievementStore, Store {
  late final _$titleAtom =
      Atom(name: '_AchievementStore.title', context: context);

  @override
  String get title {
    _$titleAtom.reportRead();
    return super.title;
  }

  @override
  set title(String value) {
    _$titleAtom.reportWrite(value, super.title, () {
      super.title = value;
    });
  }

  late final _$achieveAtom =
      Atom(name: '_AchievementStore.achieve', context: context);

  @override
  List<Achievement> get achieve {
    _$achieveAtom.reportRead();
    return super.achieve;
  }

  @override
  set achieve(List<Achievement> value) {
    _$achieveAtom.reportWrite(value, super.achieve, () {
      super.achieve = value;
    });
  }

  late final _$_AchievementStoreActionController =
      ActionController(name: '_AchievementStore', context: context);

  @override
  dynamic saveAchievement() {
    final _$actionInfo = _$_AchievementStoreActionController.startAction(
        name: '_AchievementStore.saveAchievement');
    try {
      return super.saveAchievement();
    } finally {
      _$_AchievementStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic getAchievementList() {
    final _$actionInfo = _$_AchievementStoreActionController.startAction(
        name: '_AchievementStore.getAchievementList');
    try {
      return super.getAchievementList();
    } finally {
      _$_AchievementStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic clearList() {
    final _$actionInfo = _$_AchievementStoreActionController.startAction(
        name: '_AchievementStore.clearList');
    try {
      return super.clearList();
    } finally {
      _$_AchievementStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic updateTitle(String value) {
    final _$actionInfo = _$_AchievementStoreActionController.startAction(
        name: '_AchievementStore.updateTitle');
    try {
      return super.updateTitle(value);
    } finally {
      _$_AchievementStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
title: ${title},
achieve: ${achieve}
    ''';
  }
}
