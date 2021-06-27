import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Food extends StatefulWidget{
  String name;
  String restaurantName;
  String picture;
  String restaurantAvatar;
  int price;
  bool Process;
  bool active;
  static List<Food> processes = [];
  static int i = -1;
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
                    ),
                  leading: Container(
                    child: Image.network(Food.processes[Food.i].picture),
                  ),
              )
          )
        ],
      ),
    );
  }
}

