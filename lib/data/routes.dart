import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppRoute {
  AppRoute._();

  static AppRoute appRoute = AppRoute._();
  GlobalKey<NavigatorState> navKey = GlobalKey<NavigatorState>();

  pushFunction(Widget widget) {
    navKey.currentState.push(MaterialPageRoute(builder: (context) {
      return widget;
    }));
  }
  pushNameFunction(String route){
    navKey.currentState.pushNamed(route);
  }
}
