import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class firstPage extends StatefulWidget {
  @override
  _firstPageState createState() => _firstPageState();
}

class _firstPageState extends State<firstPage> {


  @override
  Widget build(BuildContext context) {

    Size screenSize = MediaQuery.of(context).size;

    return  Scaffold(
        backgroundColor: Colors.white ,
        body: Container(
              constraints: BoxConstraints.expand(),
              decoration: BoxDecoration(
              image: DecorationImage(
              image: AssetImage("photo/1.png"), fit: BoxFit.cover)
        ),
         child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [

            Image.asset("photo/2.png" , fit: BoxFit.contain , height: screenSize.height/5   ),


            Padding(

              padding: const EdgeInsets.only(top: 45),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      Icon(Icons.fastfood ,color: Color(0xffef2a2a) , size: 40 ),
                      Text(" Finger\n Licking Good",
                        style: TextStyle(
                            fontSize: 15,
                          fontWeight: FontWeight.w700,
                          color: Colors.black
                        ),
                      )
                    ]
                  ),
                  Row(
                      children: [
                        Icon(FontAwesomeIcons.percentage ,color: Color(0xffef2a2a), size: 40 ),
                        Text(" Great\n Deals & Offer",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                              color: Colors.black
                          ),
                        )
                      ]
                  ),
                  Row(
                      children: [
                        Icon( FontAwesomeIcons.mobile ,color: Color(0xffef2a2a), size: 40 ),
                        Text(" Easy\n Ordering",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                              color: Colors.black
                          ),
                        )
                      ]

                  )
                ],

              ),
            ),
            Column(
              children: [
                Padding(padding:(EdgeInsets.symmetric(vertical: 45)) ),
                Container(
                  height: 50,
                  width: 300,
                  child: ElevatedButton(
                    child: Text("Sign up",
                      style: TextStyle(
                          fontStyle: FontStyle.normal,
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
                          fontStyle: FontStyle.normal,
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
    )
    );
  }
}
