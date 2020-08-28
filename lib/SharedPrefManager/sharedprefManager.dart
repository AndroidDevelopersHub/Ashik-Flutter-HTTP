import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefManager {


  void setEmail(String email) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('email', email);
  }

  getEmail() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String stringValue = prefs.getString('email');
    return stringValue;
  }





}
