// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$LayoutStore on _LayoutStore, Store {
  final _$valueAtom = Atom(name: '_LayoutStore.value');

  @override
  int get value {
    _$valueAtom.context.enforceReadPolicy(_$valueAtom);
    _$valueAtom.reportObserved();
    return super.value;
  }

  @override
  set value(int value) {
    _$valueAtom.context.conditionallyRunInAction(() {
      super.value = value;
      _$valueAtom.reportChanged();
    }, _$valueAtom, name: '${_$valueAtom.name}_set');
  }

  final _$currentIndexAtom = Atom(name: '_LayoutStore.currentIndex');

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

  final _$componentAtom = Atom(name: '_LayoutStore.component');

  @override
  Route get component {
    _$componentAtom.context.enforceReadPolicy(_$componentAtom);
    _$componentAtom.reportObserved();
    return super.component;
  }

  @override
  set component(Route value) {
    _$componentAtom.context.conditionallyRunInAction(() {
      super.component = value;
      _$componentAtom.reportChanged();
    }, _$componentAtom, name: '${_$componentAtom.name}_set');
  }

  final _$_LayoutStoreActionController = ActionController(name: '_LayoutStore');

  @override
  void increment() {
    final _$actionInfo = _$_LayoutStoreActionController.startAction();
    try {
      return super.increment();
    } finally {
      _$_LayoutStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  PopupMenuItem<String> createHeaderBtn(IconData icon, String text, String id) {
    final _$actionInfo = _$_LayoutStoreActionController.startAction();
    try {
      return super.createHeaderBtn(icon, text, id);
    } finally {
      _$_LayoutStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void initComponent(Route comp) {
    final _$actionInfo = _$_LayoutStoreActionController.startAction();
    try {
      return super.initComponent(comp);
    } finally {
      _$_LayoutStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void onItemSelected(int index) {
    final _$actionInfo = _$_LayoutStoreActionController.startAction();
    try {
      return super.onItemSelected(index);
    } finally {
      _$_LayoutStoreActionController.endAction(_$actionInfo);
    }
  }
}
