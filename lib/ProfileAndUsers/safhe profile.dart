import 'package:flutter/material.dart';
import 'file:///C:/Users/asus/Desktop/git/Customer/lib/ProfileAndUsers/profile.dart';
class safhe_profile extends StatefulWidget {
  @override
  _safhe_profileState createState() => _safhe_profileState();
}

class _safhe_profileState extends State<safhe_profile> {
  Profile moshtari = new Profile();
  var f = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xffef2a2a),
          centerTitle: true,
          title: Text("Profile",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 40,
                color: Color(0xff000000),
            ),),
        ),
        body: Container(
             padding: EdgeInsets.symmetric(vertical: 40,horizontal: 20),
                  child:Form(
                    key: f,
                    child: ListView(
                     children:[
                       Text("Name : "+/*moshtari.name*/"arman"+"\n"+"\n"+"Last name : "+"ghafarnia"/*moshtari.lastname*/,
                         style: TextStyle(
                             fontSize: 22,
                             fontWeight: FontWeight.w400
                         ),),
                       Padding(padding:(EdgeInsets.symmetric(vertical: 20)) ),
                       TextFormField(
                       decoration: InputDecoration(
                           hintText: "Enter the credit",
                           border: OutlineInputBorder()
                       ),
                       onSaved: (String voroodi){
                         int voroodii =int.parse(voroodi);
                         //  moshtari.credit+=voroodii;
                       },
                     ),
                       Padding(padding:(EdgeInsets.symmetric(vertical: 10)) ),
                       Container(
                         height: 50,
                         width: 30,
                         child: ElevatedButton(
                           child: Text("+",
                             style: TextStyle(
                                 fontStyle: FontStyle.italic,
                                 fontWeight: FontWeight.w900,
                                 fontSize: 50
                             ),
                           ),
                           style: ElevatedButton.styleFrom(
                             primary: Color(0xff29eb49),
                           ),
                           onPressed: (){
                             setState(() {
                               f.currentState.save();
                             });
                           },
                         ),
                       )
                     ] ,
                    )
                  )
                ),
      ) ,
    );
  }
}

