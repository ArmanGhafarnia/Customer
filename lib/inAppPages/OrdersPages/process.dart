import 'package:customer/inAppPages/food/Food.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class process extends StatefulWidget{
 static List<Food> processes = [];
 static int i = 0;

  @override
  __sefaresh createState() => __sefaresh();


}

class __sefaresh extends State<process> {
  @override
  Widget build(BuildContext context) {
    return Container(
     child: Column(
      children: [
          Card(
           child: ListTile(
            title: Text(process.processes[process.i].name,
             style: TextStyle(
                 fontStyle: FontStyle.italic,
                 fontWeight: FontWeight.w500
             ),),
            subtitle: Text(process.processes[process.i].price.toString(),
             style: TextStyle(
                 color: Colors.white12
             ),),
             leading: Container(
              child: Image.network(process.processes[process.i].picture),
             ),
            trailing: Switch(
             activeColor: Colors.green,
             value: process.processes[process.i].active,
             onChanged: (bool x) {
              setState(() {
               process.processes[process.i].active = x ;
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






