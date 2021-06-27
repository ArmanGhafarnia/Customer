import 'package:customer/inAppPages/OrdersPages/OrderBackAndServers/Order_List.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: camel_case_types
class Order_Done extends StatefulWidget {
  @override
  _Order_DoneState createState() => _Order_DoneState();
}

// ignore: camel_case_types
class _Order_DoneState extends State<Order_Done> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return ListView.builder(
        itemCount: Order_List.done.length ,
        itemBuilder: (context, index) {
          return Column(children: [
            Divider(
              color: index == 0 ? Colors.white : Color(0xffef2a2a),
              height: screenSize.height * 0.02,
              thickness: 0.7,
            ),
            SizedBox(
                height: screenSize.height * 0.1,
                child: Slidable(
                  actionPane: SlidableDrawerActionPane(),
                  actions: [
                    IconSlideAction(
                      onTap: () {


                        return showDialog(
                            context: context,
                            builder: (ctx) => AlertDialog(
                              title: Text("Receipt" , style: GoogleFonts.palanquinDark(fontSize: 14 ,letterSpacing: 2  , fontWeight: FontWeight.bold  , color: Color(0xffef2a2a) )),
                              scrollable: true,
                              content: Container(
                                height: screenSize.height/4,
                                width: screenSize.width/3,
                                child: ListView.builder(
                                  itemCount:  Order_List.done[index].receipt.foods.length,
                                  itemBuilder: (context , index )=> Text("- " + Order_List.done[index].receipt.foods[index] ,
                                      style:  TextStyle(letterSpacing: 2) ),
                                ),
                              ),
                              actions: [
                                GestureDetector(

                                    onTap: (){
                                      Navigator.of(ctx).pop();
                                    },

                                    child: Padding(
                                      padding: const EdgeInsets.only(bottom : 10),
                                      child: Text("Ok  " ,  style: GoogleFonts.palanquinDark(fontSize: 18 ,letterSpacing: 2  , fontWeight: FontWeight.bold  , color: Color(0xffef2a2a) ),
                                      ),
                                    )
                                )
                              ],

                            )
                        );



                      },
                      icon: CupertinoIcons.list_bullet,
                      color: Color(0xffef2a2a),
                      caption: 'Receipt',
                    )
                  ],
                  child: ListTile(
                    leading: SizedBox(
                        child: Image.network(
                            Order_List.done[index].restaurantAvatarUrl,
                            fit: BoxFit.fill)),

                    title: Text(Order_List.done[index].restaurantName,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25)),


                    subtitle: Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                              children: [
                                Icon(
                                  FontAwesomeIcons.calendar,
                                  color: Colors.black87,
                                  size: 12,
                                ),
                                Text(
                                  " " +
                                      Order_List.done[index].orderDate.year
                                          .toString() +
                                      "/" +
                                      Order_List.done[index].orderDate.month
                                          .toString() +
                                      "/" +
                                      Order_List.done[index].orderDate.day
                                          .toString() +
                                      "   " +
                                      Order_List.done[index].orderDate.hour
                                          .toString() +
                                      ":" +
                                      Order_List
                                          .done[index].orderDate.minute
                                          .toString() + "    ",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400, fontSize: 12),
                                ),

                                Icon(
                                  Icons.location_on_outlined,
                                  color: Colors.black87,
                                  size: 12,
                                ),
                                Text(Order_List.done[index].orderLocationTitle ,
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400, fontSize: 12 ))


                              ]
                          ),


                          Row(
                            children: [
                              Icon(FontAwesomeIcons.dollarSign,
                                  size: 22),
                              Text(
                                  Order_List.done[index].orderPrice
                                      .toString(),
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: 22 , color: Colors.black ))
                            ],
                          )
                        ],
                      ),
                    ),
                    dense: true,
                  ),
                ))
          ]);
        });
  }
}
