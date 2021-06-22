import 'package:flutter/material.dart';
class arman_restaurant_page extends StatefulWidget {
  @override
  _arman_restaurant_pageState createState() => _arman_restaurant_pageState();
}

class _arman_restaurant_pageState extends State<arman_restaurant_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff29eb49),
        title: Text("ARMAN",style: TextStyle(
          fontStyle: FontStyle.italic
        ),),
      ),
    );
  }
}
