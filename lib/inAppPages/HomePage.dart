import 'package:customer/inAppPages/restaurant/restaurant2.dart';
import 'package:customer/inAppPages/restaurant/restaurant3.dart';
import 'package:customer/inAppPages/restaurant/restaurant_class.dart';
import 'package:flutter/material.dart';
import 'package:customer/inAppPages/restaurant/restaurant.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        title: Center(
            child: Image.asset("photo/2.png", height: screenSize.height * 0.25, width: screenSize.width * 0.25)
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.location_on),
            onPressed: () {
              print("hi");
            },
            padding: EdgeInsets.only(right: screenSize.width * 0.03),
            iconSize: screenSize.width * 0.07,
            tooltip: ' Manage \n Address ',

          )
        ],
      ),
      drawer: Drawer(),
      body: ListView(
        children: [
          reastaurant(),
          restaurant2(),
          restaurant3()
        ]
      ),
    );
  }
}
