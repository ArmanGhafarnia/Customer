import 'package:customer/inAppPages/OrdersPages/OrderBackAndServers/comment.dart';
import 'package:customer/inAppPages/OrdersPages/process.dart';
import 'package:customer/inAppPages/food/Food.dart';
import 'package:customer/inAppPages/food/class%20fake.dart';
import 'package:customer/inAppPages/restaurant/liked.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class rabin_restaurant_page extends StatefulWidget {
  @override
  _rabin_restaurant_pageState createState() => _rabin_restaurant_pageState();
}

class _rabin_restaurant_pageState extends State<rabin_restaurant_page> {
  List<String> comment =[];
  String com;
  var formy = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff29eb49),
        title: Text("RABIN",style: TextStyle(
            fontStyle: FontStyle.italic
        ),),
      ),
      body: SizedBox(
        height:1000,
        width: 500,
        child: ListView(
          children: [
            Container(
              child:  Image.network("https://res.cloudinary.com/tf-lab/image/upload/w_600,h_337,c_fill,g_auto:subject,q_auto,f_auto/restaurant/5fc8b078-b676-4d3c-b205-db3f845bd6bd/1355d7de-29a9-4388-87de-1c18ca80bac7.jpg"),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 100),
              child: Row(
                children: [
                  Container(
                    height:30 ,
                    width: 50,
                    color: Color(0xff29eb49),
                    child: ElevatedButton(
                      child: Text("3.4",style: TextStyle(
                          color: Colors.black,
                          fontSize: 12
                      ),),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal:50),
                    child: Container(
                      height: 30,
                      width: 60,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: liked.rabin ? Color(0xffef2a2a) : Color(0xff0abbb0),
                        ),
                        onPressed: (){
                          setState(() {
                            liked.rabin=!liked.rabin;
                          });
                        },
                        child: Text("Like",style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w400
                        ),),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: ListTile(
                title: Text("Pizza ",style: TextStyle(
                    fontSize: 20
                ),),
                subtitle: Text("20000"),
                leading: Container(
                  child: Image.network("https://www.aislac.org/wp-content/uploads/2021/01/pizza.jpg"),
                ),
                onTap: (){
                  setState(() {
                    Food a = new Food(name: "pizza",restaurantName: "rabin_restaurant",picture: "https://www.aislac.org/wp-content/uploads/2021/01/pizza.jpg",restaurantAvatar: "https://cdn1.vectorstock.com/i/1000x1000/33/80/fast-food-shop-store-front-flat-style-vector-9183380.jpg",price: 20000,Process: false,active: false);
                    Food.processes.add(a);
                  });
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: ListTile(
                title: Text("Popcorn ",style: TextStyle(
                    fontSize: 20
                ),),
                subtitle: Text("3000"),
                leading: Container(
                  child: Image.network("https://www.rachelpaulsfood.com/wp-content/uploads/DSC_0697.jpg"),
                ),
                onTap: (){
                  setState(() {
                    Food p = new Food(name: "pop corn",restaurantName: "rabin_restaurant",picture: "https://www.rachelpaulsfood.com/wp-content/uploads/DSC_0697.jpg",restaurantAvatar: "https://cdn1.vectorstock.com/i/1000x1000/33/80/fast-food-shop-store-front-flat-style-vector-9183380.jpg",price: 3000,Process: false,active: false);
                    Food.processes.add(p);
                  });
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: ListTile(
                title: Text("Crab ",style: TextStyle(
                    fontSize: 20
                ),),
                subtitle: Text("23000"),
                leading: Container(
                  width: 100,
                  child: Image.network("https://media-cdn.tripadvisor.com/media/photo-s/0e/33/ee/e7/crabe.jpg"),
                ),
                onTap: (){
                  setState(() {
                    Food c = new Food(name: "crab",restaurantName: "rabin_restaurant",picture: "https://media-cdn.tripadvisor.com/media/photo-s/0e/33/ee/e7/crabe.jpg",restaurantAvatar: "https://cdn1.vectorstock.com/i/1000x1000/33/80/fast-food-shop-store-front-flat-style-vector-9183380.jpg",price: 23000,Process: false,active: false);
                    Food.processes.add(c);
                  });
                },
              ),
            ),
            Column(
              children: List.generate(comment.length, (index) => Text(comment[index]) ) ,
            )
          ],
        ),
      ),
      floatingActionButton: Builder(
        builder: (context)=>FloatingActionButton(
          backgroundColor: Color(0xff0abbb0),
          child: Icon(FontAwesomeIcons.comment,
            color: Colors.white,),
          onPressed: (){
            showModalBottomSheet(
                context: context,
                builder:(context)=>Container(
                    padding: EdgeInsets.all(25) ,
                    child: Form(
                        key: formy,
                        child: ListView(
                          children: [
                            TextFormField(
                              onSaved: (String value){
                                com = value;
                                commentlist.comments.add(com);
                              },
                            ),
                            ElevatedButton(
                              child: Text("comment"),
                              onPressed: (){
                                setState(() {
                                  formy.currentState.save();
                                  comment.add(com);
                                });
                                Navigator.pop(context);
                              },
                            )
                          ],
                        )

                    )

                )
            );
          },
        ),
      ) ,
    );
  }
}



