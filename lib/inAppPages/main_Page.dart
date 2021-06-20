import 'package:customer/inAppPages/CartPages/Cart.dart';
import 'package:customer/inAppPages/OrdersPages/Order_Home.dart';
import 'package:flutter/material.dart';
import 'package:customer/inAppPages/HomePage.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class main_Page extends StatefulWidget {
  @override
  _main_PageState createState() => _main_PageState();
}

class _main_PageState extends State<main_Page> {

  int currentPageIndex = 1 ;

  final List pages = [

    Order_Home(),
    HomePage(),
    Cart()

  ];

  changePage ( int pageIndex ) {
    setState(()  {
      currentPageIndex = pageIndex ;
    });
  }

  @override
  Widget build(BuildContext context) {

    Size screenSize =  MediaQuery.of(context).size ;

    return Scaffold(


      body: pages[currentPageIndex],

      bottomNavigationBar: BottomNavigationBar(
        elevation: 10,

        unselectedItemColor: Colors.black54 ,
        selectedItemColor: Color(0xffef2a2a) ,
        onTap: (int index) {changePage(index);} ,
        currentIndex: currentPageIndex ,
        iconSize: screenSize.width * 0.03 ,
        selectedFontSize: screenSize.width * 0.03 ,
        unselectedFontSize: screenSize.width * 0.025 ,


        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.list )  , title: Text("Orders",style : GoogleFonts.palanquinDark(fontWeight: FontWeight.bold ) )),
          BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.home) , title: Text("  Home", style: GoogleFonts.palanquinDark(fontWeight: FontWeight.bold ) )),
          BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.shoppingCart ) , title : Text("  Cart" , style: GoogleFonts.palanquinDark(fontWeight: FontWeight.bold ) ))
        ],

      ),

    );
  }
}

