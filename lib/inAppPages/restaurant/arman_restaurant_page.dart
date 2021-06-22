import 'package:flutter/material.dart';
class arman_restaurant_page extends StatefulWidget {
  @override
  _arman_restaurant_pageState createState() => _arman_restaurant_pageState();
}

class _arman_restaurant_pageState extends State<arman_restaurant_page> {
  @override
  bool f = false;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff29eb49),
        title: Text("ARMAN",style: TextStyle(
          fontStyle: FontStyle.italic
        ),),
      ),
      body: Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 100,vertical:80),
            child: Column(
              children: [
                Container(
                  height: 250,
                  width: 200,
                  child : Image.network("https://cdn1.iconfinder.com/data/icons/supermarket-cafe-and-stores/50/42-512.png"),
                ),
                Center(
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
                                child: Image.network("https://upload.wikimedia.org/wikipedia/commons/b/b1/Hot_dog_with_mustard.png"),
                                decoration: BoxDecoration(
                                ),
                              ),
                            ),
                            Text("Hot dog",style: TextStyle(
                                fontSize: 20
                            ),),
                            Padding(
                              padding: EdgeInsets.all(11),
                              child: Container(
                                height: 30,
                                width: 70,
                                child: Switch(
                                  value: f,
                                  onChanged: (bool f2){
                                    setState(() {
                                      f=f2;
                                    });
                                  },
                                  activeColor: Colors.greenAccent[700],
                                )
                              ),
                            )
                          ],
                        ),

                      ),
                    ),
                  ),
                ),
                    ListView(
                      children: [
                        ListTile(
                          title: Text("hot dog",style: TextStyle(
                              fontSize: 20
                          ),),
                          leading: CircleAvatar(
                            child: Image.network("https://upload.wikimedia.org/wikipedia/commons/b/b1/Hot_dog_with_mustard.png"),
                          ),
                        )
                      ],
                    )
              ],
            ),
          ),
        ],
      )

    );
  }
}
