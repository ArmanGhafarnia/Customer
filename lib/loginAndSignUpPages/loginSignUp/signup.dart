import 'package:customer/ProfileAndUsers/users/user.dart';
import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  var f = GlobalKey<FormState>();
  bool visible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
         Container(
            padding: EdgeInsets.all( 50),
            child: Form(
              key: f,
              child: ListView(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                    hintText: "Name",
                      border: OutlineInputBorder()
                    ),
                    onSaved: (String voroodi){
                      User ozv = new User();
                      ozv.name=voroodi;
                      User.users.add(ozv);
                    },
                    validator: (String voroodi){
                      if(voroodi==null||voroodi.isEmpty)
                        return "enter some";

                      return null;
                    },

                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: "Last name",
                        border: OutlineInputBorder()
                    ),
                    onSaved: (String voroodi){
                      User.users[User.users.length-1].lastname=voroodi;
                    },
                    validator: (String voroodi){
                      if(voroodi==null||voroodi.isEmpty)
                        return "enter some";

                      return null;
                    },
                  ),
                  Padding(padding:(EdgeInsets.symmetric(vertical: 20)) ),
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: "Phone number",
                        border: OutlineInputBorder()
                    ),
                    onSaved: (String voroodi){
                      int voroodii = int.parse(voroodi);
                      User.users[User.users.length-1].phone=voroodii;
                    },
                    validator: (String voroodi){
                      if(voroodi==null||voroodi.isEmpty)
                        return "enter some";

                      if(voroodi.length!=11){
                        return "invalid number";
                      }

                      return null;
                    },
                  ),
                  TextFormField(
                    keyboardType: TextInputType.multiline,
                    maxLines: 8,
                    decoration: InputDecoration(
                        hintText: "Address",
                        border: OutlineInputBorder()
                    ),
                    onSaved: (String voroodi){
                      User.users[User.users.length-1].addresses = voroodi.split('\n');
                    },
                    validator: (String voroodi){
                      if(voroodi==null||voroodi.isEmpty)
                        return "enter some";

                      return null;
                    },

                  ),
                  Padding(padding:(EdgeInsets.symmetric(vertical: 20)) ),
                  TextFormField(

                    obscureText: visible,
                    onSaved: (String voroodi){
                      User.users[User.users.length-1].password=voroodi;
                    },
                    validator: (String voroodi){
                      if(voroodi==null||voroodi.isEmpty)
                        return "enter some";

                      RegExp reg = RegExp(r"^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{6,}$",multiLine: false);
                     bool f = reg.hasMatch(voroodi);
                     if(!f){
                       return "invalid password";
                     }

                      return null;
                    },
                    decoration: InputDecoration(
                      hintText: "Password",
                     border: OutlineInputBorder(),
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            visible = !visible;
                          });
                        },
                        icon: Icon(visible ? Icons.visibility_off :  Icons.visibility),
                      ),
                  ),
                  ),
                  Padding(padding:(EdgeInsets.symmetric(vertical: 100)) ),
                  Container(
                    height: 50,
                    width: 300,
                    child: ElevatedButton(
                      child: Text("Submit",
                        style: TextStyle(
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.w900,
                            fontSize: 18
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xff0abbb0),
                      ),
                      onPressed: (){
                        if(f.currentState.validate())
                          setState(() {
                            f.currentState.save();
                            Navigator.pushNamed(context,"first page");
                          });

                      },
                    ),
                  ),
                ],
              )
            ),
          ),
    );
  }
}


