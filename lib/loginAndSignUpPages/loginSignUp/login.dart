import 'package:customer/ProfileAndUsers/users/user.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var key = GlobalKey<FormState>();
  bool visible = true;
  int index;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("photo/1.png"), fit: BoxFit.cover)
        ),
        child: Container(
          padding: EdgeInsets.all( 50),
          child: Form(
              key: key,
              child: ListView(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: "Phone number",
                        border: OutlineInputBorder()
                    ),
                    onSaved: (String input){
                      print("a");
                    },
                    validator: (String input){
                      if(input==null||input.isEmpty)
                        return "enter some";


                      bool check = false;
                      int _input = int.parse(input);
                      for(int i =0;i<User.users.length;i++){
                        if(User.users[i].phone==_input){
                          check=true;
                          index=i;
                        }
                      }

                      if(!check){
                        return "no signed up number";
                      }

                      return null;
                    },
                  ),
                  Padding(padding:(EdgeInsets.symmetric(vertical: 20)) ),
                  TextFormField(
                    obscureText: visible,
                    onSaved: (String input){
                      User.users[index].use=true;
                    },
                    validator: (String input){
                      if(input==null||input.isEmpty)
                        return "enter some";

                      if(User.users[index].password!=input){
                        return "incorrect password";
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
                  Padding(padding:(EdgeInsets.symmetric(vertical: 40)) ),
                  Container(
                    height: 50,
                    width: 300,
                    child: ElevatedButton(
                      child: Text("Enter",
                        style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 18
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xff29EB49),
                      ),
                      onPressed: (){
                        if(key.currentState.validate())
                          setState(() {
                            key.currentState.save();
                            Navigator.pushNamed(context,"main page");
                          });

                      },
                    ),
                  ),
                  Padding(padding:(EdgeInsets.symmetric(vertical: 80)) ),
                  Container(
                    child: Text("don't have account ?",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold
                    ),),
                  ),
                  Padding(padding:(EdgeInsets.symmetric(vertical: 10)) ),
                  Container(
                    height: 50,
                    width: 300,
                    child: ElevatedButton(
                      child: Text("Signup",
                        style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 18
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xffef2a2a),
                      ),
                      onPressed: (){
                        Navigator.pushNamed(context,"sign up");
                      },
                    ),
                  ),
                ],
              )
          ),
        ),
      )


    );
  }
}
