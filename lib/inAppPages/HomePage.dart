import 'package:customer/inAppPages/restaurant/restaurant2.dart';
import 'package:customer/inAppPages/restaurant/restaurant3.dart';
import 'package:customer/inAppPages/restaurant/restaurant_class.dart';
import 'package:flutter/material.dart';
import 'package:customer/inAppPages/restaurant/restaurant.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        title: Center(
            child: Image.asset("photo/2.png", height: screenSize.height * 0.25, width: screenSize.width * 0.25)
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.location_on),
            onPressed: () {
              print("hi");
            },
            padding: EdgeInsets.only(right: screenSize.width * 0.03),
            iconSize: screenSize.width * 0.07,
            tooltip: ' Manage \n Address ',

          )
        ],
      ),
      drawer: Drawer(),
      body: ListView(
        children: [
          reastaurant(),
          restaurant2(),
          restaurant3(),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(30),
                child: GestureDetector(
                  onTap: (){
                  showModalBottomSheet(context: context, builder:(context)=>Container(
                    child: ListView(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 120,vertical: 10),
                          child: Text("Fast Food",style: TextStyle(
                            fontSize: 30,
                            color: Colors.red,
                            fontWeight: FontWeight.w600
                          ),),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: ListTile(
                            subtitle: Text("arman_restaurant"),
                            title: Text("  Hot Dog ",style: TextStyle(
                                fontSize: 20
                            ),),
                            leading: Container(
                              child: Image.network("https://upload.wikimedia.org/wikipedia/commons/b/b1/Hot_dog_with_mustard.png"),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: ListTile(
                            subtitle: Text("arman_restaurant"),
                            title: Text("French Fries ",style: TextStyle(
                                fontSize: 20
                            ),),
                            leading: Container(
                              child: Image.network("https://shoolenco.com/en/wp-content/uploads/sites/4/2018/09/french-fries88.jpg"),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: ListTile(
                            subtitle: Text("amir_restaurant"),
                            title: Text("Hamburger ",style: TextStyle(
                                fontSize: 20
                            ),),
                            leading: Container(
                              child: Image.network("https://assets.epicurious.com/photos/57c5c6d9cf9e9ad43de2d96e/master/pass/the-ultimate-hamburger.jpg"),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: ListTile(
                            title: Text("Pizza ",style: TextStyle(
                                fontSize: 20
                            ),),
                            subtitle: Text("rabin_restaurant"),
                            leading: Container(
                              child: Image.network("https://www.aislac.org/wp-content/uploads/2021/01/pizza.jpg"),
                            ),

                          ),
                        ),
                      ],
                    ),
                  ));
                  },
                  child: Container(
                    width: 100,
                    height: 100,
                    child: Image.network("https://www.mccourier.com/wp-content/uploads/2021/05/5-17.jpg"),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(0),
                child: GestureDetector(
                  onTap: (){
                    showModalBottomSheet(context: context, builder:(context)=>Container(
                      child: ListView(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 120,vertical: 10),
                            child: Text("Classical",style: TextStyle(
                                fontSize: 30,
                                color: Color(0xff29eb49),
                                fontWeight: FontWeight.w600
                            ),),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(30),
                            child: ListTile(
                              title: Text("Kebab ",style: TextStyle(
                                  fontSize: 20
                              ),),
                              subtitle: Text("arman_restaurant"),
                              leading: Container(
                                width: 100,
                                child: Image.network("https://media.mehrnews.com/d/2019/07/09/4/3175131.jpg"),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: ListTile(
                              title: Text("Chicken ",style: TextStyle(
                                  fontSize: 20
                              ),),
                              subtitle: Text("amir_restaurant"),
                              leading: Container(
                                child: Image.network("https://www.seriouseats.com/thmb/hGmf-CklPEWYtGrsB1XIOfldngM=/1500x844/smart/filters:no_upscale()/__opt__aboutcom__coeus__resources__content_migration__serious_eats__seriouseats.com__2015__07__20210324-SouthernFriedChicken-Andrew-Janjigian-21-cea1fe39234844638018b15259cabdc2.jpg"),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: ListTile(
                              title: Text("Popcorn ",style: TextStyle(
                                  fontSize: 20
                              ),),
                              subtitle: Text("rabin_restaurant"),
                              leading: Container(
                                child: Image.network("https://www.rachelpaulsfood.com/wp-content/uploads/DSC_0697.jpg"),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ));
                  },
                  child: Container(
                    width: 100,
                    height: 100,
                    child: Image.network("https://carlsbadcravings.com/wp-content/uploads/2020/07/Doner-Kebabs-v3.jpg"),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: GestureDetector(
                  onTap: (){
                    showModalBottomSheet(context: context, builder:(context)=>Container(
                      child: ListView(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 120,vertical: 10),
                            child: Text("Sea Food",style: TextStyle(
                                fontSize: 30,
                                color: Color(0xff0abbb0),
                                fontWeight: FontWeight.w600
                            ),),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: ListTile(
                              title: Text("Fish ",style: TextStyle(
                                  fontSize: 20
                              ),),
                              subtitle: Text("amir_restaurant"),
                              leading: Container(
                                width: 100,
                                child: Image.network("https://img.etimg.com/thumb/msid-68495044,width-1070,height-580,imgsize-1335371,overlay-etpanache/photo.jpg"),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: ListTile(
                              title: Text("Crab ",style: TextStyle(
                                  fontSize: 20
                              ),),
                              subtitle: Text("rabin_restaurant"),
                              leading: Container(
                                width: 100,
                                child: Image.network("https://media-cdn.tripadvisor.com/media/photo-s/0e/33/ee/e7/crabe.jpg"),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ));
                  },
                  child: Container(
                    width: 100,
                    height: 100,
                    child: Image.network("https://content3.jdmagicbox.com/comp/def_content/seafood-retailers/seafood-retailers-1-seafood-retailers-1-4bdd7.jpg?clr=443922"),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(),
                    ),
                  ),
                ),
              ),
            ],
          )
        ]
      ),
    );
  }
}
