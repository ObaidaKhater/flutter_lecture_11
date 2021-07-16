import 'package:flutter/material.dart';
import 'package:flutter_lecture_11/data/customer_data.dart';
import 'package:flutter_lecture_11/data/sharedpreferences_data.dart';
import 'package:flutter_lecture_11/ui/register_page/custom_text_form_field_widget.dart';
import 'package:string_validator/string_validator.dart';

class RegisterCustomerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          CustomTextFormFieldWidget(
            labelText: 'Email',
            obscureText: false,
            validator: (String value) {
              if (value.length == 0) return 'Email should not empty !';
              if (!isEmail(value)) return 'This not email !';
              return null;
            },
            onSaved: (String value) {
            SPData.spData.setUserName(value);
            },
          ),
          SizedBox(
            height: 20,
          ),
          CustomTextFormFieldWidget(
            labelText: 'Password',
            obscureText: true,
            validator: (String value) {
              if (value.length == 0) return 'Password should not empty !';
              if (value.length <= 6) return 'less Than 6 digit !';
              return null;
            },
            onSaved: (String value) {
              SPData.spData.setPassword(value);
            },
          ),
        ],
      ),
    );
  }
}
