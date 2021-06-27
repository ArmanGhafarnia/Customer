import 'package:customer/ProfileAndUsers/profile.dart';
import 'package:customer/ProfileAndUsers/users/user.dart';
import 'package:customer/inAppPages/OrdersPages/OrderBackAndServers/comment.dart';
import 'package:customer/inAppPages/restaurant/liked.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

class safhe_profile extends StatefulWidget {
  @override
  _safhe_profileState createState() => _safhe_profileState();
}

class _safhe_profileState extends State<safhe_profile> {
  Profile moshtari = new Profile();
  var f = GlobalKey<FormState>();
  Image _image;
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    _imgFromCamera() async {
      final _picker = ImagePicker();

      PickedFile image = await _picker.getImage(
          source: ImageSource.camera
      );

      setState(() {
        _image =  kIsWeb ? Image.network(image.path) : Image.file(File(image.path));
      });
    }

    _imgFromGallery() async {
      final _picker = ImagePicker();

      PickedFile image = await _picker.getImage(
          source: ImageSource.gallery, imageQuality: 50
      );

      setState(() {
        _image =  kIsWeb ? Image.network(image.path) : Image.file(File(image.path));
      });
    }

    _showPicker(context) {
      showModalBottomSheet(
          context: context,
          builder: (BuildContext bc) {
            return SafeArea(
              child: Container(
                child:  Wrap(
                  children: [

                    ListTile(
                      leading:  Icon(Icons.photo_camera),
                      title:  Text('Camera'),
                      onTap: () {
                        _imgFromCamera();
                        Navigator.of(context).pop();
                      },
                    ),
                    ListTile(
                        leading: Icon(Icons.photo_library),
                        title: Text('Photo Library'),
                        onTap: () {
                          _imgFromGallery();
                          Navigator.of(context).pop();
                        }),
                  ],
                ),
              ),
            );
          }
      );
    }
    return MaterialApp(
      home: Scaffold(
        appBar:  AppBar(
          backwardsCompatibility: true,
          elevation: 1,
          centerTitle: true,
          title: Image.asset("photo/2.png", height: screenSize.height*0.25, width: screenSize.width* 0.25),
        ),
        body: Container(
             padding: EdgeInsets.symmetric(vertical: 40,horizontal: 20),
                  child:Form(
                    key: f,
                    child: ListView(
                     children:[
                       Center(
                         child: SizedBox(
                           height: 32,
                         ),
                       ),
                       GestureDetector(
                         onTap: () {
                           _showPicker(context);
                         },
                         child: CircleAvatar(
                           radius: 55,
                           backgroundColor: Color(0xa6ef2a2a),
                           child: _image != null
                               ? ClipRRect(
                               borderRadius: BorderRadius.circular(50),
                               child: _image
                           )
                               : Container(
                             decoration: BoxDecoration(
                                 color: Colors.grey[200],
                                 borderRadius: BorderRadius.circular(50)),
                             width: 100,
                             height: 100,
                             child: Icon(
                               Icons.camera_alt,
                               color: Colors.grey[800],
                             ),
                           ),
                         ),
                       ),
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
                         User.users[0].mojoodi+=voroodii;
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
                       ),
                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Column(
                             children: List.generate(commentlist.comments.length, (index) => Text(commentlist.comments[index]) )
                         ),
                       ),
                      Column(
                        children: [
                          liked.amir ? Padding(
                            padding: const EdgeInsets.all(2),
                            child: Text("amir_restaurant"),
                          ) : Text("x"),
                          liked.arman ? Padding(
                            padding: const EdgeInsets.all(2),
                            child: Text("arman_restaurant"),
                          ) : Text("x"),
                          liked.rabin ? Padding(
                            padding: const EdgeInsets.all(2),
                            child: Text("rabin_restaurant"),
                          ) : Text("x"),
                        ],
                      )

                     ] ,
                    )
                  )
                ),
      ) ,
    );
  }
}

