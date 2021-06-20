import 'package:flutter/material.dart';
import 'Order_Done.dart';
import 'Order_InProgress.dart';


// ignore: camel_case_types
class Order_Home extends StatefulWidget {
  @override
  _Order_HomeState createState() => _Order_HomeState();
}

// ignore: camel_case_types
class _Order_HomeState extends State<Order_Home> with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = new TabController( initialIndex:  0 , length: 2 , vsync: this );
  }
  @override
  Widget build(BuildContext context) {

    Size screenSize = MediaQuery.of(context).size;

    return Scaffold(


      body: NestedScrollView(

        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              centerTitle: true,
              pinned: true,
              floating: true,
              title: Image.asset("photo/2.png", height: screenSize.height * 0.25, width: screenSize.width * 0.25) ,
              backwardsCompatibility: false,
              elevation: 0,

              bottom: TabBar(
                controller: tabController,
                isScrollable: true,
                indicatorColor: Color(0xffef2a2a) ,
                labelColor: Colors.black ,
                labelStyle: TextStyle( fontWeight: FontWeight.w500 ),
                unselectedLabelStyle: TextStyle( fontWeight: FontWeight.w400 ),

                tabs: [

                  Tab(
                    child: Container(
                      child: Text("In Progress" , textAlign: TextAlign.center ),
                      width: screenSize.width * 0.436 ,

                    ),
                  ),

                  Tab(
                      child: Container(
                        child: Text("Done" , textAlign: TextAlign.center ),
                        width: screenSize.width * 0.436 ,
                      )

                  )
                ],
              ),
            )
          ];
        },
        body: TabBarView(
          controller: tabController,
          children: [
            Order_InProgress(),
            Order_Done(),
          ]
        ),


      ) ,
    );
  }
}
