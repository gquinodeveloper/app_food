import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:marker_icon/marker_icon.dart';

class Directions extends StatefulWidget {
  const Directions({Key? key}) : super(key: key);

  @override
  _DirectionsState createState() => _DirectionsState();
}

class _DirectionsState extends State<Directions> {
  Completer<GoogleMapController> _controller = Completer();
  Set<Marker> _markers = <Marker>{};

  int typeMap = 0;

  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(
      -12.050756,
      -77.047198,
    ),
    zoom: 15.4746,
  );

  static final CameraPosition _kLake = CameraPosition(
    bearing: 192.8334901395799,
    target: LatLng(
      37.43296265331129,
      -122.08832357078792,
    ),
    tilt: 59.440717697143555,
    zoom: 19.151926040649414,
  );

  _loadMarkers() async {
    _markers.add(
      Marker(
        markerId: MarkerId('Maker1'),
        icon: await MarkerIcon.downloadResizePicture(
          url: 'https://cdn-icons-png.flaticon.com/512/684/684908.png',
          imageSize: 100,
        ),
        position: LatLng(
          -12.050767,
          -77.047284,
        ),
      ),
    );

    _markers.add(
      Marker(
        markerId: MarkerId('Maker3'),
        icon: await MarkerIcon.downloadResizePicture(
          url: 'https://cdn-icons-png.flaticon.com/512/684/684908.png',
          imageSize: 100,
        ),
        position: LatLng(
          -12.0543998,
          -77.0463158,
        ),
        onTap: () {
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: Text("Title"),
                content: Container(
                  color: Colors.white,
                  child: FlutterLogo(),
                ),
              );
            },
          );
        },
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _loadMarkers();

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        mapType: typeMap == 0 ? MapType.normal : MapType.satellite,
        initialCameraPosition: _kGooglePlex,
        markers: _markers,
        myLocationEnabled: false,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
          print("print");
        },
      ),
      /* floatingActionButton: FloatingActionButton.extended(
        //onPressed: _goToTheLake,
        onPressed: () {
          setState(() {
            typeMap = 1;
          });
        },
        label: Text('To the lake!'),
        icon: Icon(Icons.directions_boat),
      ), */
    );
  }

  Future<void> _goToTheLake() async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
  }
}
