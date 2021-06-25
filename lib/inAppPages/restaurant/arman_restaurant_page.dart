import 'package:customer/inAppPages/OrdersPages/process.dart';
import 'package:customer/inAppPages/food/Food.dart';
import 'package:customer/inAppPages/food/class%20fake.dart';
import 'package:customer/inAppPages/restaurant/liked.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class arman_restaurant_page extends StatefulWidget {
  @override
  _arman_restaurant_pageState createState() => _arman_restaurant_pageState();
}

class _arman_restaurant_pageState extends State<arman_restaurant_page> {
  @override
  List<String> comment =[];
  String com;
  var formy = GlobalKey<FormState>();
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff29eb49),
        title: Text("ARMAN",style: TextStyle(
          fontStyle: FontStyle.italic
        ),),
      ),
      body: SizedBox(
        height:1000,
        width: 500,
        child: ListView(
                        children: [
                          Container(
                            child:  Image.network("https://media-cdn.tripadvisor.com/media/photo-s/1b/67/cc/f8/chestnut-restaurant.jpg"),
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
                                    child: Text("5.2",style: TextStyle(
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
                                        primary: Color(0xff0abbb0),
                                      ),
                                      onPressed: (){
                                        setState(() {
                                          liked.liked_restaurants.add("Arman");
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
                              title: Text("Hot Dog ",style: TextStyle(
                                  fontSize: 20
                              ),),
                                subtitle: Text("12000"),
                                leading: Container(
                                child: Image.network("https://upload.wikimedia.org/wikipedia/commons/b/b1/Hot_dog_with_mustard.png"),
                              ),
                              onTap: (){
                                setState(() {
                                  Food a = new Food(name:"hot dog",restaurantName:"arman_restaurant",picture:"https://upload.wikimedia.org/wikipedia/commons/b/b1/Hot_dog_with_mustard.png",restaurantAvatar:"https://media-cdn.tripadvisor.com/media/photo-s/1b/67/cc/f8/chestnut-restaurant.jpg",price: 12000,Process: false,active: false);
                                  process.processes.add(a);
                                });
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: ListTile(
                              title: Text("French Fries ",style: TextStyle(
                                  fontSize: 20
                              ),),
                              subtitle: Text("10000"),
                              leading: Container(
                                child: Image.network("https://shoolenco.com/en/wp-content/uploads/sites/4/2018/09/french-fries88.jpg"),
                              ),
                             onTap: (){
                                setState(() {
                                  Food d = new Food(name: "french fries",restaurantName: "arman_restaurant",picture: "https://shoolenco.com/en/wp-content/uploads/sites/4/2018/09/french-fries88.jpg",restaurantAvatar:"https://media-cdn.tripadvisor.com/media/photo-s/1b/67/cc/f8/chestnut-restaurant.jpg",price: 10000,Process: false,active: false );
                                  process.processes.add(d);
                                });
                             },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: ListTile(
                              title: Text("Kebab ",style: TextStyle(
                                  fontSize: 20
                              ),),
                              subtitle: Text("17000"),
                              leading: Container(
                                width: 100,
                                child: Image.network("https://media.mehrnews.com/d/2019/07/09/4/3175131.jpg"),
                              ),
                              onTap: (){
                                setState(() {
                                  Food g = new Food(name : "kebab" , restaurantName: "arman_restaurant",picture: "https://media.mehrnews.com/d/2019/07/09/4/3175131.jpg",restaurantAvatar: "https://media-cdn.tripadvisor.com/media/photo-s/1b/67/cc/f8/chestnut-restaurant.jpg",price: 17000,Process: false,active: false);
                                  process.processes.add(g);
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
