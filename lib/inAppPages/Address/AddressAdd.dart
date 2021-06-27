import 'package:flutter/material.dart';
import 'package:flutter_map/plugin_api.dart';
import 'package:latlong2/latlong.dart' as latLng;



class AddressAdd extends StatefulWidget {

  static List <latLng.LatLng> locationsPins  = [];
  static latLng.LatLng pinLocation ;


  @override
  _AddressAddState createState() => _AddressAddState();
}

class _AddressAddState extends State<AddressAdd> {

  @override
  Widget build(BuildContext context) {

    Size screenSize = MediaQuery.of(context).size ;

    var markers = AddressAdd.locationsPins.map((ll) => Marker(
      width: 80.0,
      height: 80.0,
      point: latLng.LatLng(ll.latitude,ll.longitude),
      builder: (ctx) =>
          Container(
            child: Icon(
              Icons.location_on,
              size: 50,
              color: Colors.red,
            ),
          ),
    )
  ).toList();

    return Scaffold(

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(30),
            child: SizedBox(
              height: screenSize.height /3 ,
              width: screenSize.width/1.2 ,

              child: FlutterMap(
                options: MapOptions(
                    zoom: 13.0,
                    onTap: (context) => _handleTap
                ),
                layers: [
                  TileLayerOptions(
                    urlTemplate:
                      "https://api.mapbox.com/styles/v1/amirizadi/ckqc9xv8o009c17mu3cnxyy37/wmts?access_token=pk.eyJ1IjoiYW1pcml6YWRpIiwiYSI6ImNrcWM5dWE0cTAxY3gydW56ZjJhbGw3czEifQ.n7nuDM48lVlzWl8Vy_DZVw"
                  ),
                  MarkerLayerOptions(
                      markers: markers)
                ],
              ),

            ),
          )
        ],
      ),

    );
  }


  void _handleTap(latLng.LatLng latlng) {

    setState(() {
      if (AddressAdd.locationsPins.isEmpty) {
        AddressAdd.locationsPins.add(latlng);
      } else {
        AddressAdd.locationsPins.clear();
        AddressAdd.locationsPins.add(latlng);
      }
      AddressAdd.pinLocation = latlng ;
      print(AddressAdd.pinLocation);
    });
  }
}



