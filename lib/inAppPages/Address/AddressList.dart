import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'AddressAdd.dart';

class AddressList extends StatefulWidget {
  @override
  _AddressListState createState() => _AddressListState();
}

class _AddressListState extends State<AddressList> {

  @override
  Widget build(BuildContext context) {

    Size screenSize = MediaQuery.of(context).size ;

    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween ,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text( "  choose Address" ,

                        style: GoogleFonts.palanquinDark(
                            fontSize: 14 ,
                            letterSpacing: 2  ,
                            fontWeight: FontWeight.normal  ,
                        )
                    ),

                    Text('   To see the best deals, first determine your location' , style: TextStyle(fontWeight: FontWeight.w100 , fontSize: 9 ) )
                  ],

                ),

                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: GestureDetector(
                    behavior: HitTestBehavior.deferToChild,
                    child: Row(
                      children: [

                        Icon(FontAwesomeIcons.plus , color: Color(0xffef2a2a) , size: screenSize.width*0.02 ),

                        Text(" New Address    " ,
                            style: GoogleFonts.palanquinDark(
                              fontSize: 14 ,
                              letterSpacing: 2  ,
                              fontWeight: FontWeight.normal  ,
                                color: Color(0xffef2a2a)
                            )

                        )
                      ],
                    ),
                    onTap: () {

                      showModalBottomSheet(
                          context: context,
                          isScrollControlled: true,
                          elevation: 2,
                          builder: (context) {
                            return FractionallySizedBox(
                                heightFactor: 0.91,
                                child: AddressAdd()
                            );
                          });
                    },
                  ),
                )
              ],
            ),
          ),


          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10 , vertical: 14),
            child: TextField(

              decoration: InputDecoration(
                hintText: 'search Address',
                hintStyle: TextStyle(fontSize: 13 , letterSpacing: 2 ),
              ),
            ),
          ),

          Row(

            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 1),
                child: Text( "  Address : " ,

                  textAlign: TextAlign.left,

                  style: GoogleFonts.palanquinDark(
                    fontSize: 11 ,
                    letterSpacing: 2  ,
                    fontWeight: FontWeight.bold  ,
                  )
                ),
              )
            ]
          ),



          SizedBox(
            height: screenSize.height/1.772,
            width: screenSize.width/1.1,
            child: ListView.builder(
                itemCount: MyAddressList.addressList.length ,
                itemBuilder: (context,index) => Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Container(
                      height: screenSize.height/10,
                      width: screenSize.width/1.5,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(6)),
                        
                        border: Border. all(
                          
                            color:
                            MyAddressList.addressList[index] == MyAddressList.selectedAddress
                                ?  Color(0xff29EB49) : Colors.grey  // red as border color.
                        ),
                      ),
                      child: ListTile(

                        leading: Icon(
                          MyAddressList.addressList[index] == MyAddressList.selectedAddress
                              ? CupertinoIcons.check_mark_circled_solid
                              : CupertinoIcons.circle  ,

                          color: MyAddressList.addressList[index] == MyAddressList.selectedAddress
                              ? Color(0xff29EB49)
                              : Colors.grey,
                          size: 20,

                        ),

                        title: Text(

                            MyAddressList.addressList[index].name ,
                            style: GoogleFonts.palanquinDark(
                              fontSize: 14 ,
                              letterSpacing: 2  ,
                              fontWeight: FontWeight.normal  ,
                            )
                        ),

                        subtitle: Text(
                          MyAddressList.addressList[index].address,
                          style: TextStyle(fontWeight: FontWeight.normal , fontSize: 12),

                        ),


                        trailing: IconButton(

                          icon: Icon(CupertinoIcons.delete_solid , size: 15 , color : Colors.grey),

                          focusColor:  Color(0xffef2a2a),
                          splashColor:  Color(0xffef2a2a),

                          splashRadius: 20,


                          onPressed: () {

                            setState(() {
                              MyAddressList.addressList.removeAt(index);
                            });
                          }

                        ),


                        onTap: () {
                          setState(() {
                            if(MyAddressList.selectedAddress == MyAddressList.addressList[index])
                              MyAddressList.selectedAddress = null ;
                            else
                              MyAddressList.selectedAddress = MyAddressList.addressList[index] ;
                          });
                        },

                      )


                  ),
                )

            ),
          )

        ],
      ),
    );
  }
}

class MyAddressList {

  static Address selectedAddress ;
  static List<Address> addressList = [

    Address(
      name : 'home' ,
      address : 'Texas - Dawson - 2291 Sundown Lane - No78749 '
    ) ,

    Address(
        name : 'home' ,
        address : 'Texas - Dawson - 2291 Sundown Lane - No78749 '
    ) ,

    Address(
        name : 'home' ,
        address : 'Texas - Dawson - 2291 Sundown Lane - No78749 '
    ),
    Address(
        name : 'home' ,
        address : 'Texas - Dawson - 2291 Sundown Lane - No78749 '
    ) ,

    Address(
        name : 'home' ,
        address : 'Texas - Dawson - 2291 Sundown Lane - No78749 '
    ),
    Address(
        name : 'home' ,
        address : 'Texas - Dawson - 2291 Sundown Lane - No78749 '
    )

  ];







}

class Address {

  String name ;
  String address ;

  Address({this.name,this.address});

}
