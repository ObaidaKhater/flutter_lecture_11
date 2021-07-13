import 'package:flutter/material.dart';
import 'package:flutter_lecture_11/data/routes.dart';
import 'package:flutter_lecture_11/ui/main_page.dart';
import 'package:flutter_lecture_11/ui/register_page/main_register_page.dart';
import 'package:flutter_lecture_11/ui/register_page/register_customer_page.dart';
import 'package:flutter_lecture_11/ui/register_page/register_merchant_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainRegisterPage(),
      navigatorKey: AppRoute.appRoute.navKey,
      routes: {
     //   '/': (context) => MainRegisterPage(),
        'customer': (context) => RegisterCustomerPage(),
        'merchant': (context) => RegisterMerchantPage(),
      },
    );
  }
}
