import 'package:customer/inAppPages/OrdersPages/process.dart';
import 'package:customer/inAppPages/food/Food.dart';
import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffef2a2a),
        title: Padding(
          padding: const EdgeInsets.all(100),
          child: Text("Cart",style: TextStyle(
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.w600,
            fontSize: 25
          ),),
        ),
      ),
      drawer: Drawer(
        child: ElevatedButton(
          onPressed: (){
            setState(() {
              Food.processes=[];
            });
          },
          style: ElevatedButton.styleFrom(
            primary: Color(0xff0abbb0),
          ),
          child: Text("delete"),
        ),
      ),
      body: ListView.builder(
        itemCount:  Food.processes.length,
        itemBuilder: (BuildContext context,int index){
          return Container(
            child: Food.processes[index],
          );
        }
    ),
      floatingActionButton: Builder(
        builder: (context)=>FloatingActionButton(
             backgroundColor: Color(0xff29eb49),
            child: Icon(Icons.add,
              color:Colors.black,),
          onPressed: (){
               setState(() {
                 double sum=0;
                 for(int i =0;i<Food.processes.length;i++){
                   sum+=Food.processes[Food.i].price;
                 }
               });
          },
        ),
      )

    );
  }
}
