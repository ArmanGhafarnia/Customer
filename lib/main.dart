import 'file:///C:/Users/asus/Desktop/git/Customer/lib/inAppPages//main_Page.dart';
import 'file:///C:/Users/asus/Desktop/git/Customer/lib/loginAndSignUpPages/splash_Screen.dart';
import 'file:///C:/Users/asus/Desktop/git/Customer/lib/loginAndSignUpPages/loginSignUp/login.dart';
import 'file:///C:/Users/asus/Desktop/git/Customer/lib/loginAndSignUpPages/loginSignUp/signup.dart';
import 'file:///C:/Users/asus/Desktop/git/Customer/lib/loginAndSignUpPages/loginSignUp/first%20page.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


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
        backgroundColor: Colors.white ,
        appBarTheme: AppBarTheme(color: Colors.white  ),
        primaryIconTheme: IconThemeData( color : Color(0xffef2a2a) ),
        tooltipTheme: TooltipThemeData( textStyle: GoogleFonts.roboto( color: Color(0xffef2a2a) , fontWeight: FontWeight.w700 )  , decoration: BoxDecoration( color: Colors.black12 ,borderRadius: BorderRadius.circular(3) ) )
      ),

      routes: {
        "/login" : (context) => Login(),
        "sign up" : (context) => Signup(),
        "first page":(context)=> Firstpage(),
        "splash screen" : (context) => splash_Screen(),
        "main page" : (context) => main_Page()

      },
      home: splash_Screen(),
    );
  }
}


