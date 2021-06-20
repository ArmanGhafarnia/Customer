import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

// ignore: camel_case_types
class splash_Screen extends StatefulWidget {
  @override
  _splash_ScreenState createState() => _splash_ScreenState();
}

// ignore: camel_case_types
class _splash_ScreenState extends State<splash_Screen> {
  bool token = true;

  startTime() {
    var _duration = Duration(seconds: 5);
    return Timer(_duration, navigationPage);
  }

  navigationPage() {
    String pageName = token ? "main page" : "first page";
    Navigator.of(context).pushNamed(pageName);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffef2a2a),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DefaultTextStyle(
                style: TextStyle(
                    fontSize: 60,
                    fontWeight: FontWeight.bold,
                    //fontFamily: ,
                    color: Colors.white),
                child: AnimatedTextKit(
                  animatedTexts: [WavyAnimatedText('FoodHub')],
                  isRepeatingAnimation: false,
                ),
              ),
              Text(
                "Copyright © 2021 by CE-SBU All right reserved",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Colors.white),
              ),
            ],
          ),
        ));
  }
}
