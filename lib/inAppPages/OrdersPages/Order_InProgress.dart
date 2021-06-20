import 'package:customer/inAppPages/OrdersPages/OrderBackAndServers/Order_List.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// ignore: camel_case_types
class Order_InProgress extends StatefulWidget {
  @override
  _Order_InProgressState createState() => _Order_InProgressState();
}

// ignore: camel_case_types
class _Order_InProgressState extends State<Order_InProgress> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return ListView.builder(
        itemCount: Order_List.inProgress.length ,
        itemBuilder: (context, index) {
          return Column(children: [
            Divider(
              color: index == 0 ? Colors.white : Color(0xffef2a2a),
              height: screenSize.height * 0.01,
            ),
            SizedBox(
                height: screenSize.height * 0.15,
                child: Slidable(
                  actionPane: SlidableDrawerActionPane(),
                  actions: [
                    IconSlideAction(
                      onTap: () {



                      },
                      icon: CupertinoIcons.list_bullet,
                      color: Color(0xffef2a2a),
                      caption: 'Receipt',
                    )
                  ],
                  child: ListTile(
                    leading: SizedBox(
                        child: Image.network(
                            Order_List.inProgress[index].restaurantAvatarUrl,
                            fit: BoxFit.fill)),

                    title: Text(Order_List.inProgress[index].restaurantName,
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
                                    Order_List.inProgress[index].orderDate.year
                                        .toString() +
                                    "/" +
                                    Order_List.inProgress[index].orderDate.month
                                        .toString() +
                                    "/" +
                                    Order_List.inProgress[index].orderDate.day
                                        .toString() +
                                    "   " +
                                    Order_List.inProgress[index].orderDate.hour
                                        .toString() +
                                    ":" +
                                    Order_List
                                        .inProgress[index].orderDate.minute
                                        .toString() + "    ",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400, fontSize: 12),
                              ),

                                Icon(
                                  Icons.location_on_outlined,
                                  color: Colors.black87,
                                  size: 12,
                                ),
                                Text(Order_List.inProgress[index].orderLocationTitle ,
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400, fontSize: 12 ))


                            ]
                          ),


                          Row(
                            children: [
                              Icon(FontAwesomeIcons.dollarSign,
                                  size: 22),
                              Text(
                                  Order_List.inProgress[index].orderPrice
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
