import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'store.g.dart';

class LayoutStore = _LayoutStore with _$LayoutStore;

abstract class _LayoutStore with Store {
  @observable
  int value = 0;

  @observable
  int currentIndex = 0;

  @observable
  Route<dynamic> component;

  @action
  void increment() {
    value++;
  }

  @action
  PopupMenuItem<String> createHeaderBtn(IconData icon, String text, String id) {
    return PopupMenuItem<String>(
      value: id,
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          new Icon(icon, color: Colors.blue),
          new Text(text),
        ],
      ),
    );
  }

  @action
  void initComponent(Route<dynamic> comp) {
    component = comp;
  }

  @action
  void onItemSelected(int index) {
    currentIndex = index;
    switch (index) {
      case 0:
        component.navigator.pushNamed('/home');
        break;
      case 1:
        component.navigator.pushNamed('/user');
        break;
      case 2:
        component.navigator.pushNamed('/message');
        break;
      case 3:
        component.navigator.pushNamed('/setting');
        break;
    }
  }
}
