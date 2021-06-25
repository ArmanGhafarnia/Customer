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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 70,
                    width: 80,
                    child: Image.network("https://www.eastbaytimes.com/wp-content/uploads/2019/08/EBT-L-VICTORIA-0810-1.jpg"),
                  ),
                ),
                Text("Amir",style: TextStyle(
                  fontSize: 20
                ),),
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
                          Navigator.pushNamed(context,"amir_restaurant_page");
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
