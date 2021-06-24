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
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 100),
                          child: Image.network("https://cdn1.iconfinder.com/data/icons/supermarket-cafe-and-stores/50/42-512.png"),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: ListTile(
                            title: Text("hot dog",style: TextStyle(
                                fontSize: 20
                            ),),
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
                            title: Text("French Fries",style: TextStyle(
                                fontSize: 20
                            ),),
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
                      ],
                    )
            );

  }
}
