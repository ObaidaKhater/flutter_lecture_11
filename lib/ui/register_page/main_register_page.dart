import 'package:flutter/material.dart';
import 'package:flutter_lecture_11/data/routes.dart';
import 'package:flutter_lecture_11/ui/customer_page/customer_page.dart';
import 'package:flutter_lecture_11/ui/main_page.dart';
import 'package:flutter_lecture_11/ui/merchant_page/merchant_page.dart';
import 'package:flutter_lecture_11/ui/register_page/register_customer_page.dart';
import 'package:flutter_lecture_11/ui/register_page/register_merchant_page.dart';

enum UserType { Customer, Merchant }

class MainRegisterPage extends StatefulWidget {
  @override
  _MainRegisterPageState createState() => _MainRegisterPageState();
}

class _MainRegisterPageState extends State<MainRegisterPage> {
  UserType userType = UserType.Customer;
  GlobalKey<FormState> globalKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register'),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Form(
            key: globalKey,
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: RadioListTile(
                          title: Text('Customer'),
                          value: UserType.Customer,
                          groupValue: userType,
                          onChanged: (newValue) {
                            userType = newValue;
                            setState(() {});
                          }),
                    ),
                    Expanded(
                      child: RadioListTile(
                          title: Text('Merchant'),
                          value: UserType.Merchant,
                          groupValue: userType,
                          onChanged: (newValue) {
                            userType = newValue;
                            setState(() {});
                          }),
                    ),
                  ],
                ),
                (UserType.Customer == userType)
                    ? RegisterCustomerPage()
                    : RegisterMerchantPage(),
                SizedBox(height: 20),
                ElevatedButton(
                    onPressed: () async {
                      if (globalKey.currentState.validate()) {
                        globalKey.currentState.save();
                        // AppRoute.appRoute.pushFunction(MainPage());
                        // AppRoute.appRoute.pushNameFunction('customer');
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return (UserType.Customer == userType)
                              ? CustomerPage()
                              : MerchantPage();
                        }));

                        //Navigator.of(context).pushNamed('customer');
                      }
                    },
                    child: Text('Register')),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
