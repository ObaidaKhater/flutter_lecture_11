import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lecture_11/data/sharedpreferences_data.dart';
import 'package:flutter_lecture_11/ui/customer_page/customer_page.dart';
import 'package:flutter_lecture_11/ui/register_page/main_register_page.dart';

class AppRoute {
  AppRoute._();

  static AppRoute appRoute = AppRoute._();
  GlobalKey<NavigatorState> navKey = GlobalKey<NavigatorState>();

  pushFunction(Widget widget) {
    navKey.currentState.push(MaterialPageRoute(builder: (context) {
      return widget;
    }));
  }

  pushNameFunction(String route) {
    navKey.currentState.pushNamed(route);
  }

  Widget getHomePage() {
    if (SPData.spData.getUserName() == null ||
        SPData.spData.getPassword() == null) {
      return MainRegisterPage();
    } else {
      return CustomerPage();
    }
  }
}
