import 'package:customer/splash_Screen.dart';
import 'package:flutter/material.dart';
import 'package:customer/first%20page.dart';
import 'package:customer/login.dart';
import 'package:customer/signup.dart';
import 'package:customer/first page.dart';
import 'package:customer/splash_Screen.dart' ;


void main() {
  runApp(myapp());
}

class myapp extends StatefulWidget {
  @override
  _myappState createState() => _myappState();
}

class _myappState extends State<myapp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FoodHub',
      theme: ThemeData(
        primaryIconTheme: IconThemeData( color : Color(0xffef2a2a) ),
      ),

      routes: {
        "/login" : (context) => Login(),
        "sign up" : (context) => Signup(),
        "first page":(context)=> Firstpage(),
        "splash screen" : (context) => splash_Screen()
      },
      home: splash_Screen(),
    );
  }
}


