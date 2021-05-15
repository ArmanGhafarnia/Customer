import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:customer/login.dart';

class Firstpage extends StatefulWidget {
  @override
  _FirstpageState createState() => _FirstpageState();
}

class _FirstpageState extends State<Firstpage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: Color(0xffffffff),
        body: Column(
          children: [
            Container(
              child: Image.asset("photo/2.png"),
              padding: EdgeInsets.symmetric(vertical: 80,horizontal: 30),
            ),
            Column(
              children: [
                Padding(padding:(EdgeInsets.symmetric(vertical: 100)) ),
                Container(
                  height: 50,
                  width: 300,
                  child: ElevatedButton(
                    child: Text("Sign up",
                      style: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w900,
                          fontSize: 18
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xffEF2A2A),
                    ),
                    onPressed: (){
                      Navigator.pushNamed(context,"sign up");
                    },
                  ),
                ),
                Padding(padding: (EdgeInsets.symmetric(vertical: 20))),
                Container(
                  height: 50,
                  width: 300,
                  child: ElevatedButton(
                    child: Text("Login",
                      style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontStyle: FontStyle.italic,
                          fontSize: 20
                      ),),
                    style: ElevatedButton.styleFrom(
                        primary: Color(0xff29EB49)
                    ),
                    onPressed : (){
                      Navigator.pushNamed(context,"/login");
                    },
                  ),
                ),

              ],
            )
          ],
        )
    );
  }
}
