import 'package:customer/inAppPages/OrdersPages/process.dart';
import 'package:customer/inAppPages/food/class%20fake.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class rabin_restaurant_page extends StatefulWidget {
  @override
  _rabin_restaurant_pageState createState() => _rabin_restaurant_pageState();
}

class _rabin_restaurant_pageState extends State<rabin_restaurant_page> {
  bool f = false;
  bool fx =false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff29eb49),
        title: Text("RABIN",style: TextStyle(
            fontStyle: FontStyle.italic
        ),),
      ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 100),
              child: Image.network(Fake.c.restaurantAvatar),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: ListTile(
                title: Text("Pizza",style: TextStyle(
                    fontSize: 20
                ),),
                leading: Container(
                  child: Image.network(Fake.c.picture),
                ),
                trailing: Switch(
                    value: f,
                    onChanged: (bool f2){
                      setState(() {
                        f=f2;
                        process.processes.add(Fake.c);
                      });
                    },
                    activeColor: Color(0xff29eb49)
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: ListTile(
                title: Text("Popcorn",style: TextStyle(
                    fontSize: 20
                ),),
                leading: Container(
                  child: Image.network(Fake.f.picture),
                ),
                trailing: Switch(
                    value: fx,
                    onChanged: (bool f2){
                      setState(() {
                        fx=f2;
                        process.processes.add(Fake.f);
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



