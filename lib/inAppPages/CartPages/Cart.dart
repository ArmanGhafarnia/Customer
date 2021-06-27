import 'package:customer/inAppPages/OrdersPages/process.dart';
import 'package:customer/inAppPages/food/Food.dart';
import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffef2a2a),
        title: Padding(
          padding: const EdgeInsets.all(100),
          child: Text("Cart",style: TextStyle(
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.w600,
            fontSize: 25
          ),),
        ),
      ),
      body: ListView.builder(
        itemCount:  process.processes.length,
        itemBuilder: (BuildContext context,int index){
          return Container(
            child: process.processes[index],
          );
        }
    ),
    );
  }
}
