import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 300,
      child: Image.network("https://themes.muffingroup.com/be/pizza/wp-content/uploads/2014/09/home_pizza_slider_1.png"),
    );
  }
}
