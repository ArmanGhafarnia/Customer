import 'package:flutter/material.dart';
class restaurant2 extends StatefulWidget {
  @override
  _restaurant2State createState() => _restaurant2State();
}

class _restaurant2State extends State<restaurant2> {
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
                    child: Image.network("https://cdn1.vectorstock.com/i/1000x1000/81/30/fast-food-restaurant-and-vector-10328130.jpg"),
                    decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(25)
                    ),
                  ),
                ),
                Text("amir"),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Container(
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
                ),
              ],
            ),

          ),
        ),
      ),
    );
  }
}
