import 'package:customer/inAppPages/OrdersPages/Order_Done.dart';
import 'package:customer/inAppPages/OrdersPages/Order_InProgress.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';




// ignore: camel_case_types
class Order_Home extends StatefulWidget {
  @override
  _Order_HomeState createState() => _Order_HomeState();



}

// ignore: camel_case_types
class _Order_HomeState extends State<Order_Home> with SingleTickerProviderStateMixin {
  TabController tabController;

  bool chip1Controller = false;
  bool chip2Controller = false;

  Map<String , SliverAppBar> appBarList ;
  Map<String , List> tabBarViewList ;
  String _currentAppBar = 'mainAppBar' ;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    tabController = new TabController( initialIndex:  0 , length: 2 , vsync: this );

  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();

    Size screenSize = MediaQuery.of(context).size;

    SliverAppBar mainAppBar = SliverAppBar(
      centerTitle: true,
      pinned: true,
      floating: true,
      title: Image.asset("photo/2.png", height: screenSize.height * 0.25, width: screenSize.width * 0.25) ,
      backwardsCompatibility: false,
      elevation: 5,

      leading: IconButton(
        icon: Icon(FontAwesomeIcons.search),
        padding: EdgeInsets.only(left: screenSize.width * 0.01),
        color: Color(0xffef2a2a) ,
        iconSize: screenSize.width * 0.045,
        onPressed: (){
          setState(() {
            _currentAppBar = 'searchAppBar';
          });
        },
      ),

      actions: [

        IconButton( icon : Icon(FontAwesomeIcons.filter),
          padding : EdgeInsets.only(right: screenSize.width * 0.01),
          color : Color(0xffef2a2a) ,
          iconSize: screenSize.width * 0.042,

          onPressed: (){

            showModalBottomSheet(
                context: context,
                elevation: 2,
                backgroundColor: Color(0xffef2a2a) ,
                builder: (context) {
                  return Container(
                      height: screenSize.height* 0.12 ,

                      child: ListView(


                        children: [

                          Text( "Only orders about following chosen time period" ,
                              style: GoogleFonts.palanquinDark(fontSize: 14 ,letterSpacing: 3 , color: Colors.white) ,
                              textAlign: TextAlign.center
                          ),

                          Padding(

                            padding:  EdgeInsets.only(top: 10),

                            child: Row(

                              mainAxisAlignment: MainAxisAlignment.center,

                              children: [


                                FilterChip(

                                    label: Text(" last day" , style: GoogleFonts.palanquinDark(fontSize: 12 , color: Colors.black) ),
                                    backgroundColor: chip1Controller ? Color(0xff29eb49) : Colors.white70,
                                    onSelected: (chip1Controller){
                                      setState(() {
                                        chip1Controller = ! chip1Controller ;
                                        chip2Controller = false ;
                                      });
                                    }

                                ),


                                Padding(
                                    padding: const EdgeInsets.only(left :30.0),
                                    child: FilterChip(

                                        label: Text(" last 7 days " , style: GoogleFonts.palanquinDark(fontSize: 12 , color: Colors.black) ),
                                        backgroundColor: chip2Controller ? Color(0xff29eb49) : Colors.white70,
                                        onSelected: (chip1Controller){
                                          setState(() {
                                            chip2Controller = ! chip2Controller ;
                                            chip1Controller = false ;
                                          });
                                        }

                                    )
                                ),

                              ],
                            ),
                          )

                        ],
                      )

                  );
                }
            );

          },
        ),
      ],

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
              child: Text("In Progress" , style:  GoogleFonts.palanquinDark(fontWeight: FontWeight.bold ) , textAlign: TextAlign.center ),
              width: screenSize.width * 0.436 ,

            ),
          ),

          Tab(
              child: Container(
                child: Text("Done" , style:  GoogleFonts.palanquinDark(fontWeight: FontWeight.bold ) , textAlign: TextAlign.center ),
                width: screenSize.width * 0.436 ,
              )

          )
        ],
      ),
    );

    SliverAppBar searchAppBar = SliverAppBar(

        pinned: true,
        floating: true,
        backwardsCompatibility: false,
        elevation: 5,

        title: TextField(
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: 'search',
          ),
        ),

        leading: GestureDetector(
          child: Icon( CupertinoIcons.back,  color: Color(0xffef2a2a) ),
          onTap: (){
            setState(() {
              _currentAppBar = 'mainAppBar';
            });
          },
        ),


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
                child: Text("In Progress" , style:  GoogleFonts.palanquinDark(fontWeight: FontWeight.bold ) , textAlign: TextAlign.center ),
                width: screenSize.width * 0.436 ,

              ),
            ),

            Tab(
                child: Container(
                  child: Text("Done" , style:  GoogleFonts.palanquinDark(fontWeight: FontWeight.bold ) , textAlign: TextAlign.center ),
                  width: screenSize.width * 0.436 ,
                )

            )
          ],
        )

    );

    appBarList =  {
      'mainAppBar' : mainAppBar ,
      'searchAppBar' : searchAppBar
    };
  }
  @override
  Widget build(BuildContext context) {



    return Scaffold(


      body: NestedScrollView(

        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            appBarList[_currentAppBar]
          ];
        },
        body: TabBarView(
          controller: tabController,

          children:  [
            _currentAppBar == 'mainAppBar' ? Order_InProgress() : Center(child: Text("search") ),
            _currentAppBar == 'mainAppBar' ?  Order_Done() : Center(child: Text("search") )

          ],
        ),


      ) ,
    );
  }
}
