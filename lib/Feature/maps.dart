import 'dart:async';
import 'package:google_api_headers/google_api_headers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_google_places/flutter_google_places.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:google_maps_webservice/places.dart';
import 'package:geocoding/geocoding.dart';
import 'package:yourbook/Feature/formsewa.dart';

const kGoogleApiKey = "AIzaSyAL01447ZtatfolgyaC6PuYNrPvHQy-Idc";

class MapsScreen extends StatefulWidget {
  const MapsScreen({Key? key}) : super(key: key);

  @override
  _MapsScreenState createState() => _MapsScreenState();
}

final homeScaffoldKey = GlobalKey<ScaffoldState>();
final searchScaffoldKey = GlobalKey<ScaffoldState>();

class _MapsScreenState extends State<MapsScreen> {
  final _mode = Mode.overlay;
  late GoogleMapController googleMapController;
  Set<Marker> markerList = {};
  CameraPosition? cameraPosition;
  LatLng startLocation = const LatLng(-6.973140778632925, 107.63025509547448);
  var location = "Location Name:";
  var location_complete = "Location Name:";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: homeScaffoldKey,
        appBar: AppBar(
          title: const Text("Search Location"),
          actions: [
            IconButton(
              onPressed: _handlePressButton,
              icon: const Icon(Icons.search),
            )
          ],
        ),
        body: Stack(children: [
          GoogleMap(
            //Map widget from google_maps_flutter package
            zoomGesturesEnabled: true, //enable Zoom in, out on map
            initialCameraPosition: CameraPosition(
              //innital position in map
              target: startLocation, //initial position
              zoom: 17, //initial zoom level
            ),
            mapType: MapType.normal, //map type
            onMapCreated: (controller) {
              //method called when map is created
              setState(() {
                googleMapController = controller;
              });
            },
            onCameraMove: (CameraPosition cameraPositiona) {
              cameraPosition = cameraPositiona; //when map is dragging
            },
            onCameraIdle: () async {
              //when map drag stops
              List<Placemark> placemarks = await placemarkFromCoordinates(
                  cameraPosition!.target.latitude,
                  cameraPosition!.target.longitude);
              setState(() {
                //get place name from lat and lang
                location = placemarks.first.street.toString();
                location_complete = placemarks.first.street.toString() +
                    ", " +
                    placemarks.first.subLocality.toString() +
                    ", " +
                    placemarks.first.locality.toString() +
                    ", " +
                    placemarks.first.postalCode.toString() +
                    ", " +
                    placemarks.first.subAdministrativeArea.toString() +
                    ", " +
                    placemarks.first.administrativeArea.toString();
              });
            },
          ),
          const Center(
              //picker image on google map
              child: Icon(
            Icons.location_on_sharp,
            color: Colors.red,
            size: 50,
          )),
          Positioned(
              //widget to display location name
              top: 10,
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Card(
                  child: Container(
                    padding: const EdgeInsets.all(0),
                    width: MediaQuery.of(context).size.width - 40,
                    child: ListTile(
                      leading: const Icon(
                        Icons.location_on_sharp,
                        color: Colors.red,
                        size: 30,
                      ),
                      title: Text(
                        location,
                        style: const TextStyle(fontSize: 16),
                      ),
                      dense: true,
                      tileColor: Colors.blue[200],
                    ),
                  ),
                ),
              )),
          Positioned(
              //widget to display location name
              bottom: 15,
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Card(
                  child: Container(
                    padding: const EdgeInsets.all(0),
                    color: Colors.white10,
                    width: MediaQuery.of(context).size.width - 80,
                    child: FloatingActionButton(
                      onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => formsewa(
                              location: location_complete,
                            ),
                          )),
                      materialTapTargetSize: MaterialTapTargetSize.padded,
                      child: const Text(
                        "Selanjutnya",
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                      backgroundColor: Colors.blue[200],
                      shape: const BeveledRectangleBorder(
                          borderRadius: BorderRadius.zero),
                    ),
                  ),
                ),
              )),
        ]));
  }

  Future<void> _handlePressButton() async {
    // show input autocomplete with selected mode
    // then get the Prediction selected
    Prediction? p = await PlacesAutocomplete.show(
      context: context,
      apiKey: kGoogleApiKey,
      onError: onError,
      mode: _mode,
      language: "en",
      strictbounds: false,
      types: [""],
      decoration: InputDecoration(
        hintText: 'Search',
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(
            color: Colors.white,
          ),
        ),
      ),
      components: [Component(Component.country, "pk")],
    );

    displayPrediction(p!, homeScaffoldKey.currentState);
  }

  void onError(PlacesAutocompleteResponse response) {
    homeScaffoldKey.currentState!.showSnackBar(
      SnackBar(content: Text(response.errorMessage!)),
    );
  }

  Future<void> displayPrediction(Prediction p, ScaffoldState? scaffold) async {
    GoogleMapsPlaces _places = GoogleMapsPlaces(
      apiKey: kGoogleApiKey,
      apiHeaders: await const GoogleApiHeaders().getHeaders(),
    );
    PlacesDetailsResponse detail =
        await _places.getDetailsByPlaceId(p.placeId!);
    final lat = detail.result.geometry!.location.lat;
    final lng = detail.result.geometry!.location.lng;

    markerList.clear();
    markerList.add(Marker(
        markerId: const MarkerId("0"),
        position: LatLng(lat, lng),
        infoWindow: InfoWindow(title: detail.result.name)));
  }
}
