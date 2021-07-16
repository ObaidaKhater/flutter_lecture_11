import 'package:flutter/material.dart';
import 'package:flutter_lecture_11/data/routes.dart';
import 'package:flutter_lecture_11/data/sharedpreferences_data.dart';
import 'package:flutter_lecture_11/ui/customer_page/customer_page.dart';
import 'package:flutter_lecture_11/ui/main_page.dart';
import 'package:flutter_lecture_11/ui/merchant_page/merchant_page.dart';
import 'package:flutter_lecture_11/ui/register_page/main_register_page.dart';
import 'package:flutter_lecture_11/ui/register_page/register_customer_page.dart';
import 'package:flutter_lecture_11/ui/register_page/register_merchant_page.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await SPData.spData.initSharedPreferences();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AppRoute.appRoute.getHomePage(),
      navigatorKey: AppRoute.appRoute.navKey,
      // onGenerateRoute: (RouteSettings routeSettings) {
      //   switch (routeSettings.name) {
      //     case 'home':
      //       return MaterialPageRoute(builder: (context) {
      //         return MainPage();
      //       });
      //     default:
      //       return MaterialPageRoute(builder: (context) {
      //         return Scaffold(
      //           body: Center(
      //             child: Text('404'),
      //           ),
      //         );
      //       });
      //   }
      // },
      routes: {
          // '/': (context) => MainRegisterPage(),
        'customer': (context) => CustomerPage(),
        'merchant': (context) => MerchantPage(),
      },
    );
  }
}
