import 'package:flutter/material.dart';
class restaurant3 extends StatefulWidget {
  @override
  _restaurant3State createState() => _restaurant3State();
}

class _restaurant3State extends State<restaurant3> {
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
                    child: Image.network("https://cdn1.vectorstock.com/i/1000x1000/33/80/fast-food-shop-store-front-flat-style-vector-9183380.jpg"),
                    decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(25)
                    ),
                  ),
                ),
                Text("third"),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Container(
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
                ),
              ],
            ),

          ),
        ),
      ),
    );
  }
}
