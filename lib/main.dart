import 'package:customer/safhe%20profile.dart';
import 'package:flutter/material.dart';
import 'package:customer/first%20page.dart';
import 'package:customer/login.dart';
import 'package:customer/signup.dart';
import 'package:customer/first page.dart';

void main() {
  runApp(safhe_profile());
}

class myapp extends StatefulWidget {
  @override
  _myappState createState() => _myappState();
}

class _myappState extends State<myapp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/login" : (context) => Login(),
        "sign up" : (context) => Signup(),
        "first page":(context)=> Firstpage(),
      },
      home: Firstpage(),
    );
  }
}


