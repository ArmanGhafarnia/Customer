import 'package:customer/inAppPages/restaurant/amir_restaurant_page.dart';
import 'package:customer/inAppPages/restaurant/arman_restaurant_page.dart';
import 'package:customer/inAppPages/restaurant/restaurant.dart';
import 'package:customer/inAppPages/restaurant/rabin_restaurant_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'inAppPages/main_Page.dart';
import 'loginAndSignUpPages/loginSignUp/firstPage.dart';
import 'loginAndSignUpPages/loginSignUp/login.dart';
import 'loginAndSignUpPages/loginSignUp/signup.dart';
import 'loginAndSignUpPages/splash_Screen.dart';

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
        "first page":(context)=> firstPage(),
        "splash screen" : (context) => splash_Screen(),
        "main page" : (context) => main_Page(),
        "arman_restaurant_page" : (context)=> arman_restaurant_page(),
        "amir_restaurant_page" : (context)=> amir_restaurant_page(),
        "rabin_restaurant_page" : (context)=> rabin_restaurant_page(),
      },
      home: splash_Screen(),
    );
  }
}


