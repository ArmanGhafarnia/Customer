import 'package:flutter/material.dart';

class sefaresh extends StatefulWidget {
  @override
  _sefareshState createState() => _sefareshState();
}

class _sefareshState extends State<sefaresh> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.green,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.add))
          ],

        ),
      );

  }
}

