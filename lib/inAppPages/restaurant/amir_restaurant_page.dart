import 'package:customer/inAppPages/OrdersPages/process.dart';
import 'package:customer/inAppPages/food/class%20fake.dart';
import 'package:flutter/material.dart';
class amir_restaurant_page extends StatefulWidget {
  @override
  _amir_restaurant_pageState createState() => _amir_restaurant_pageState();
}

class _amir_restaurant_pageState extends State<amir_restaurant_page> {
  bool f = false;
  bool fx =false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff29eb49),
        title: Text("AMIR",style: TextStyle(
            fontStyle: FontStyle.italic
        ),),
      ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 100),
              child: Image.network(Fake.b.restaurantAvatar),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: ListTile(
                title: Text("Hamburger",style: TextStyle(
                    fontSize: 20
                ),),
                leading: Container(
                  child: Image.network(Fake.b.picture),
                ),
                trailing: Switch(
                    value: f,
                    onChanged: (bool f2){
                      setState(() {
                        f=f2;
                        process.processes.add(Fake.b);
                      });
                    },
                    activeColor: Color(0xff29eb49)
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: ListTile(
                title: Text("Chicken",style: TextStyle(
                    fontSize: 20
                ),),
                leading: Container(
                  child: Image.network(Fake.e.picture),
                ),
                trailing: Switch(
                    value: fx,
                    onChanged: (bool f2){
                      setState(() {
                        fx=f2;
                        process.processes.add(Fake.e);
                      });
                    },
                    activeColor: Color(0xff29eb49)
                ),
              ),
            ),
          ],
        )
    );
  }
}

