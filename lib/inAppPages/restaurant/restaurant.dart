import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class reastaurant extends StatefulWidget {
  @override
  _reastaurantState createState() => _reastaurantState();
}

class _reastaurantState extends State<reastaurant> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 120,
            width: 350,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 70,
                    width: 80,
                    child: Image.network("https://cdn1.iconfinder.com/data/icons/supermarket-cafe-and-stores/50/42-512.png"),
                    decoration: BoxDecoration(
                    ),
                  ),
                ),
                Text("Arman",style: TextStyle(
                  fontSize: 20
                ),),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Container(
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

                ),
                Padding(
                    padding: EdgeInsets.all(11),
                        child: Container(
                          height: 30,
                          width: 70,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Color(0xffeb2a2a),
                            ),
                            onPressed: (){
                              setState(() {
                                Navigator.pushNamed(context,"arman_restaurant_page");
                              });
                            },
                            child: Text("ENTER",style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontWeight: FontWeight.w400
                            ),),
                          ),
                        ),
                )
              ],
            ),

          ),
        ),
      ),
    );
  }
}

