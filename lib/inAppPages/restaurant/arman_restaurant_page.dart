import 'package:customer/inAppPages/OrdersPages/process.dart';
import 'package:customer/inAppPages/food/class%20fake.dart';
import 'package:flutter/material.dart';
class arman_restaurant_page extends StatefulWidget {
  @override
  _arman_restaurant_pageState createState() => _arman_restaurant_pageState();
}

class _arman_restaurant_pageState extends State<arman_restaurant_page> {
  @override
  bool f = false;
  bool fx =false;
  bool fy = false;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff29eb49),
        title: Text("ARMAN",style: TextStyle(
          fontStyle: FontStyle.italic
        ),),
      ),
      body: ListView(
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
                                        //por shavad
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
                            trailing: Switch(
                              value: f,
                              onChanged: (bool f2){
                                setState(() {
                                  f=f2;
                                  process.processes.add(Fake.a);
                                });
                              },
                              activeColor: Color(0xff29eb49)
                            ),
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
                            trailing: Switch(
                                value: fx,
                                onChanged: (bool f2){
                                  setState(() {
                                    fx=f2;
                                    process.processes.add(Fake.d);
                                  });
                                },
                                activeColor: Color(0xff29eb49)
                            ),
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
                            trailing: Switch(
                                value: fy,
                                onChanged: (bool f2){
                                  setState(() {
                                    fy=f2;
                                    process.processes.add(Fake.g);
                                  });
                                },
                                activeColor: Color(0xff29eb49)
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10 ),
                          child: Center(child: Text("comment 1")),
                        ),


                      ],
                    )
            );

  }
}
