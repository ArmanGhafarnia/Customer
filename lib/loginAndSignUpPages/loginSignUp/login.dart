import 'package:customer/ProfileAndUsers/users/user.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var f = GlobalKey<FormState>();
  bool visible = true;
  int andis;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all( 50),
        child: Form(
            key: f,
            child: ListView(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Phone number",
                      border: OutlineInputBorder()
                  ),
                  onSaved: (String voroodi){
                    print("a");
                  },
                  validator: (String voroodi){
                    if(voroodi==null||voroodi.isEmpty)
                      return "enter some";
                    
                    
                    bool check =false;
                    int voroodii = int.parse(voroodi);
                    for(int i =0;i<User.users.length;i++){
                      if(User.users[i].phone==voroodii){
                        check=true;
                        andis=i;
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
                  onSaved: (String voroodi){
                    User.users[andis].use=true;
                  },
                  validator: (String voroodi){
                    if(voroodi==null||voroodi.isEmpty)
                      return "enter some";

                    if(User.users[andis].password!=voroodi){
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
                        //  Navigator.pushNamed(context,"sefaresh");
                        });

                    },
                  ),
                ),
                Padding(padding:(EdgeInsets.symmetric(vertical: 80)) ),
                Container(
                  child: Text("dont have account ?",
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
                          fontStyle: FontStyle.italic,
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
      )


    );
  }
}
