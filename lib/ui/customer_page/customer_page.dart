
import 'package:flutter/material.dart';
import 'package:flutter_lecture_11/data/customer_data.dart';
import 'package:flutter_lecture_11/data/sharedpreferences_data.dart';

class CustomerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Welcome ${SPData.spData.getUserName()}'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(SPData.spData.getUserName()),
              Text(SPData.spData.getPassword()),
              ElevatedButton(
                  onPressed: () {
                    SPData.spData.removeUserName();
                    SPData.spData.removePassword();

                  },
                  child: Text(('Sign Out')))
            ],
          ),
        ));
  }
}
