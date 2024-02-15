import 'dart:async';
import 'package:location/location.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GoogleMapScreen extends StatefulWidget {
  const GoogleMapScreen({super.key});

  @override
  State<GoogleMapScreen> createState() => _GoogleMapScreenState();
}

class _GoogleMapScreenState extends State<GoogleMapScreen> {
  GoogleMapController? _mapController;
  final Location _location = Location();
  LatLng _currentLocation = const LatLng(0, 0);
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
//messenger a call disi
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

      if(_previousLocation?.latitude != 0.0){
        _polylineCoordinates.add(_previousLocation!);
      }

      _polylineCoordinates.add(_currentLocation);
      if (_previousLocation?.longitude != 0.0 && _currentLocation.latitude != 0.0) {
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
        title: const Text('location'),
        centerTitle: true,
      ),
      body: GoogleMap(
        //myLocationEnabled: true,
        compassEnabled:true,
        onMapCreated: (controller) {
          _mapController = controller;
        },
        initialCameraPosition: CameraPosition(
          target: _currentLocation,
          zoom: 16,
          tilt: 10,
        ),
       // markers: _marker != null ? <Marker>{_marker!} : <Marker>{},
        //polylines: _polylines,
      ),
    );
  }
}

