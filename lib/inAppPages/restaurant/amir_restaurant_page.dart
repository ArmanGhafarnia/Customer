import 'package:flutter/material.dart';
class amir_restaurant_page extends StatefulWidget {
  @override
  _amir_restaurant_pageState createState() => _amir_restaurant_pageState();
}

class _amir_restaurant_pageState extends State<amir_restaurant_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff29eb49),
        title: Text("AMIR",style: TextStyle(
            fontStyle: FontStyle.italic
        ),),
      ),
    );
  }
}

