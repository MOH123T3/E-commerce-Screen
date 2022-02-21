import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


class MAp extends StatefulWidget {
  const MAp({ Key? key }) : super(key: key);

  @override
  _MApState createState() => _MApState();
}

class _MApState extends State<MAp> {
  Completer<GoogleMapController>_controller = Completer();

  static const LatLng _center = const LatLng(23.8417, 73.7147);

  final Set<Marker> _markers = {};
  LatLng _lastMapPosition = _center;
  MapType _currentMapType = MapType.hybrid;
  void _onMapcreated(GoogleMapController controller){
    _controller.complete(controller);
  }
  void _onMapTypeButtonPressed(){
    setState(() {
      _currentMapType = _currentMapType== MapType.hybrid ?MapType.satellite:MapType.terrain;
    });
  }
  void _onAddMarkerButtonPressed(){
    setState(() {
      _markers.add(Marker(
        markerId: MarkerId(_lastMapPosition.toString()),
        position: _lastMapPosition,
        infoWindow: InfoWindow(
          title: 'REALLY COOL PLACE',
          snippet: "5 star Rating"
        ),icon: BitmapDescriptor.defaultMarker
      ));
    });
  }
  void _onCameraMove(CameraPosition position){
    _lastMapPosition = position.target;
  }
  void _onMapCreated(GoogleMapController controller){
    _controller.complete(controller);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("MAP "),backgroundColor: Colors.lightGreen,),
      body: Stack(children: [
      GoogleMap(
        onMapCreated: _onMapcreated,
        mapType: _currentMapType,
        initialCameraPosition: CameraPosition(
        target: _center,
        zoom: 15
        ),
       markers: _markers,
       onCameraMove:_onCameraMove ,        
        ),
     Padding(padding: EdgeInsets.all(16.0),
     child: Align(
       alignment: Alignment.topRight,
      child:Column(
        children: [
      //  TextButton(onPressed:(){_onMapTypeButtonPressed();},child: Icon(Icons.map),),
        FloatingActionButton(
                      onPressed: _onMapTypeButtonPressed,
                      materialTapTargetSize: MaterialTapTargetSize.padded,
                      backgroundColor: Colors.green,
                      child: const Icon(Icons.map, size: 36.0),
                    ),
                    SizedBox(height: 16.0),
                    FloatingActionButton(
                      onPressed: _onAddMarkerButtonPressed,
                      materialTapTargetSize: MaterialTapTargetSize.padded,
                      backgroundColor: Colors.green,
                      child: const Icon(Icons.add_location, size: 36.0),
                    ),

        ],
      )
      
      
       ),
     ),
  

      ])
    );
  }
}