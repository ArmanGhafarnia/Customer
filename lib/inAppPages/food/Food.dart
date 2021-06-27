import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Food extends StatefulWidget{
  String name;
  String restaurantName;
  String picture;
  String restaurantAvatar;
  double price;
  bool Process;
  bool active;
  static List<Food> processes = [];
  static int i = 0;
  Food({
    this.name,
    this.restaurantName,
    this.picture,
    this.restaurantAvatar,
    this.price,
    this.Process,
    this.active
  }
      );
  @override
  __sefaresh createState() => __sefaresh();

}

class __sefaresh extends State<Food> {
  @override
  Widget build(BuildContext context) {
    Food.i++;
    return Container(
      child: Column(
        children: [
          Card(
              child: ListTile(
                  title: Text(Food.processes[Food.i].name,
                    style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w500
                    ),),
                  subtitle: Text(Food.processes[Food.i].price.toString(),
                    style: TextStyle(
                        color: Colors.white12
                    ),),
                  leading: Container(
                    child: Image.network(Food.processes[Food.i].picture),
                  ),
                  trailing: Switch(
                    activeColor: Colors.green,
                    value:Food.processes[Food.i].active,
                    onChanged: (bool x) {
                      setState(() {
                       Food.processes[Food.i].active = x ;
                      });
                    },
                  )
              )
          )
        ],
      ),
    );
  }
}

