import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:async';
import 'HomeScreen/home_page.dart';
import 'LoginScreen/login_page.dart';

void main() {

  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
      statusBarColor: Colors.white, // Color for Android
      statusBarBrightness: Brightness.light // Dark == white status bar -- for IOS.
  ));

  runApp(MaterialApp(
    home: JsonParseDemo(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
//  @override
//  void initState() {
//    // TODO: implement initState
//    super.initState();
//
//    Future.delayed(Duration(seconds: 3), () {
//      Navigator.pushReplacement(
//          context,
//          MaterialPageRoute(
//            builder: (context) => LoginPage(),
//          ));
//    });
//  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FlutterLogo(
          size: 400,
        ),
      ),
    );
  }
}
