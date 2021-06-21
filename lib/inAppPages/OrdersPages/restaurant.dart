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
            decoration: BoxDecoration(
              border: Border.all(),
                  borderRadius: BorderRadius.circular(15)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 70,
                    width: 80,
                    decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(25)
                    ),
                  ),
                ),
                Text("arman"),
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


              ],
            ),

          ),
        ),
      ),
    );
  }
}

