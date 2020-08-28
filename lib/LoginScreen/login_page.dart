import 'package:flutter/material.dart';
import 'package:shop_app/Model/UserModel.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';


class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _State();
}

Future<List<User>> LoginReq(String email, String password) async {
  final String url =
      "http://api.allgame365.online/login/" + email + "/" + password;
  final response = await http.get(url);
//  print(response.body);
  if (response.body.length > 0) {
    return userFromJson(response.body);
  } else
    return null;
}

//Shared Prefff

addStringToSF() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setString('stringValue', "abc");
}








class _State extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: EdgeInsets.only(top: 70, left: 10, right: 10, bottom: 10),
            child: ListView(
              children: <Widget>[
                Container(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Login Now',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          fontSize: 30),
                    )),
                Container(
                  padding:
                      EdgeInsets.only(top: 30, left: 10, right: 10, bottom: 10),
                  child: TextField(
                    controller: emailController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Enter Email',
                    ),
                  ),
                ),
                Container(
                  padding:
                      EdgeInsets.only(top: 5, left: 10, right: 10, bottom: 10),
                  child: TextField(
                    obscureText: true,
                    controller: passwordController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Enter Password',
                    ),
                  ),
                ),
                Container(
                    height: 50,
                    margin: const EdgeInsets.only(top: 10.0),
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: RaisedButton(
                      textColor: Colors.white,
                      color: Colors.blue,
                      child: Text('Login'),
                      onPressed: () async{
                        print(emailController.text);
                        print(passwordController.text);

                       final UserModel = await LoginReq(emailController.text, passwordController.text);

                       print(UserModel[0].currentBalance);



                      },
                    )),
                Container(
                    child: Row(
                  children: <Widget>[
                    Text('Does not have account?'),
                    FlatButton(
                      textColor: Colors.blue,
                      child: Text(
                        'Sign in',
                        style: TextStyle(fontSize: 20),
                      ),
                      onPressed: () {
                        //signup screen
                      },
                    )
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                ))
              ],
            )));
  }
}
