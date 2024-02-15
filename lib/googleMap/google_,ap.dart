import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'package:resturent_app/widgets/home/search_widget.dart';

class RealTimeLocationTracker extends StatefulWidget {
  const RealTimeLocationTracker({
    Key? key,
    required bool compassEnabled,
    required Null Function(dynamic controller) onMapCreated,
    required CameraPosition initialCameraPosition,
    required Set<Marker> markers,
    required Set<Polyline> polylines,
  }) : super(key: key);

  @override
  _RealTimeLocationTrackerState createState() => _RealTimeLocationTrackerState();
}

class _RealTimeLocationTrackerState extends State<RealTimeLocationTracker> {
  GoogleMapController? _mapController;
  final Location _location = Location();
  LatLng _currentLocation = const LatLng(23.746707979905455, 90.42392040352738);
  LatLng? _previousLocation;
  final List<LatLng> _polylineCoordinates = [];
  final Set<Polyline> _polylines = {};
  Marker? _marker;

  @override
  void initState() {
    super.initState();
    _initMap();
    _startLocationUpdates();
  }

  Future<void> _initMap() async {
    final locationData = await _location.getLocation();
    setState(() {
      _currentLocation = LatLng(locationData.latitude!, locationData.longitude!);
      _mapController?.animateCamera(CameraUpdate.newLatLng(_currentLocation));
      _marker = Marker(
        markerId: const MarkerId('currentLocation'),
        position: _currentLocation,
      );
    });
  }

  void _startLocationUpdates() {
    Timer.periodic(const Duration(seconds: 10), (timer) async {
      final locationData = await _location.getLocation();
      setState(() {
        _previousLocation = _currentLocation;
        _currentLocation = LatLng(locationData.latitude!, locationData.longitude!);
        _updateMap();
      });
    });
  }

  void _updateMap() {
    setState(() {
      _marker = Marker(
        markerId: const MarkerId('currentLocation'),
        position: _currentLocation,
        infoWindow: InfoWindow(
          title: 'My Current Location',
          snippet: '${_currentLocation.latitude}, ${_currentLocation.longitude}',
        ),
      );

      if (_previousLocation != null && _previousLocation!.latitude != 0.0) {
        _polylineCoordinates.add(_previousLocation!);
      }

      _polylineCoordinates.add(_currentLocation);
      if (_previousLocation != null &&
          _previousLocation!.longitude != 0.0 &&
          _currentLocation.latitude != 0.0) {
        _polylines.add(
          Polyline(
            polylineId: const PolylineId('polyline'),
            color: Colors.blue,
            points: _polylineCoordinates,
          ),
        );
      }
    });

    _mapController?.animateCamera(CameraUpdate.newLatLng(_currentLocation));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Real Time Location Tracker'),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(onPressed: (){
                Get.back();
              }, icon: Icon(Icons.arrow_back)),
              const HomeSearchField(),
              CircleAvatar(
                radius: 20,
                backgroundImage: NetworkImage('https://lh3.googleusercontent.com/a/ACg8ocKy6t0yLrXhbbgFWWp8-60DpE9aG26R9kJkXAGD8Hc6Dg=s288-c-no'),
              ),
            ],
          ),
          GoogleMap(
            compassEnabled: true,
            onMapCreated: (controller) {
              _mapController = controller;
            },
            initialCameraPosition: CameraPosition(
              target: _currentLocation,
              zoom: 16,
              tilt: 10,
            ),
            markers: _marker != null ? <Marker>{_marker!} : <Marker>{},
            polylines: _polylines,
          ),
        ]
      ),
    );
  }
}
