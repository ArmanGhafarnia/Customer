import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class third_restaurant_page extends StatefulWidget {
  @override
  _third_restaurant_pageState createState() => _third_restaurant_pageState();
}

class _third_restaurant_pageState extends State<third_restaurant_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff29eb49),
        title: Text("THIRD",style: TextStyle(
            fontStyle: FontStyle.italic
        ),),
      ),
    );
  }
}

