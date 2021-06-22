import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class rabin_restaurant_page extends StatefulWidget {
  @override
  _rabin_restaurant_pageState createState() => _rabin_restaurant_pageState();
}

class _rabin_restaurant_pageState extends State<rabin_restaurant_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff29eb49),
        title: Text("RABIN",style: TextStyle(
            fontStyle: FontStyle.italic
        ),),
      ),
        body: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 100,vertical: 20),
              child: Container(
                height: 250,
                width: 200,
                child: Image.network("https://cdn1.vectorstock.com/i/1000x1000/33/80/fast-food-shop-store-front-flat-style-vector-9183380.jpg"),
              ),
            )
          ],
        )
    );
  }
}



