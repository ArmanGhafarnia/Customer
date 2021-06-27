import 'package:customer/inAppPages/OrdersPages/process.dart';
import 'package:customer/inAppPages/food/Food.dart';
import 'package:customer/inAppPages/food/class%20fake.dart';
import 'package:customer/inAppPages/restaurant/liked.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class amir_restaurant_page extends StatefulWidget {
  @override
  _amir_restaurant_pageState createState() => _amir_restaurant_pageState();
}

class _amir_restaurant_pageState extends State<amir_restaurant_page> {
  List<String> comment =[];
  String com;
  var formy = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff29eb49),
        title: Text("AMIR",style: TextStyle(
            fontStyle: FontStyle.italic
        ),),
      ),
      body: SizedBox(
        height:1000,
        width: 500,
        child: ListView(
          children: [
            Container(
              child:  Image.network("https://www.discoverlosangeles.com/sites/default/files/images/2019-01/laxbw-prime-1715-hor-wide.jpg?width=1600&height=1200&fit=crop&quality=78&auto=webp"),
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
                      child: Text("7.3",style: TextStyle(
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
                          primary: liked.amir ? Color(0xffef2a2a) : Color(0xff0abbb0),
                        ),
                        onPressed: (){
                          setState(() {
                            liked.amir=!liked.amir;
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
                title: Text("Hamburger ",style: TextStyle(
                    fontSize: 20
                ),),
                subtitle: Text("15000"),
                leading: Container(
                  child: Image.network("https://assets.epicurious.com/photos/57c5c6d9cf9e9ad43de2d96e/master/pass/the-ultimate-hamburger.jpg"),
                ),
                onTap: (){
                  setState(() {
                    Food a = new Food(name:"hamburger",restaurantName:"amir_restaurant",picture:"https://assets.epicurious.com/photos/57c5c6d9cf9e9ad43de2d96e/master/pass/the-ultimate-hamburger.jpg",restaurantAvatar:"https://cdn1.vectorstock.com/i/1000x1000/81/30/fast-food-restaurant-and-vector-10328130.jpg",price: 15000,Process: false,active: false);
                    Food.processes.add(a);
                  });
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: ListTile(
                title: Text("Chicken ",style: TextStyle(
                    fontSize: 20
                ),),
                subtitle: Text("30000"),
                leading: Container(
                  child: Image.network("https://www.seriouseats.com/thmb/hGmf-CklPEWYtGrsB1XIOfldngM=/1500x844/smart/filters:no_upscale()/__opt__aboutcom__coeus__resources__content_migration__serious_eats__seriouseats.com__2015__07__20210324-SouthernFriedChicken-Andrew-Janjigian-21-cea1fe39234844638018b15259cabdc2.jpg"),
                ),
                onTap: (){
                  setState(() {
                    Food d = new Food(name: "chicken",restaurantName: "amir_restaurant",picture: "https://www.seriouseats.com/thmb/hGmf-CklPEWYtGrsB1XIOfldngM=/1500x844/smart/filters:no_upscale()/__opt__aboutcom__coeus__resources__content_migration__serious_eats__seriouseats.com__2015__07__20210324-SouthernFriedChicken-Andrew-Janjigian-21-cea1fe39234844638018b15259cabdc2.jpg",restaurantAvatar:"https://cdn1.vectorstock.com/i/1000x1000/81/30/fast-food-restaurant-and-vector-10328130.jpg",price: 30000,Process: false,active: false);
                    Food.processes.add(d);
                  });
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: ListTile(
                title: Text("Fish ",style: TextStyle(
                    fontSize: 20
                ),),
                subtitle: Text("40000"),
                leading: Container(
                  width: 100,
                  child: Image.network("https://img.etimg.com/thumb/msid-68495044,width-1070,height-580,imgsize-1335371,overlay-etpanache/photo.jpg"),
                ),
                onTap: (){
                  setState(() {
                    Food g = new Food(name: "fish",restaurantName: "amir_restaurant",picture: "https://img.etimg.com/thumb/msid-68495044,width-1070,height-580,imgsize-1335371,overlay-etpanache/photo.jpg",restaurantAvatar: "https://cdn1.vectorstock.com/i/1000x1000/81/30/fast-food-restaurant-and-vector-10328130.jpg",price: 40000,Process: false,active: false);
                   Food.processes.add(g);
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

