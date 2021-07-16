import 'package:shared_preferences/shared_preferences.dart';

class SPData {
  SPData._();

  static SPData spData = SPData._();
  SharedPreferences sharedPreferences;

  initSharedPreferences() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }

  setUserName(String userName) {
    sharedPreferences.setString('userName', userName);
  }

  String getUserName() {
    return sharedPreferences.getString('userName');
  }

  setPassword(String password) {
    sharedPreferences.setString('password', password);
  }

  String getPassword() {
    return sharedPreferences.getString('password');
  }

  removeUserName(){
    sharedPreferences.remove('userName');
  }
  removePassword(){
    sharedPreferences.remove('password');
  }
}
