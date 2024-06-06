import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geocoding/geocoding.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart' as loc;

part 'maps_states.dart';
part 'maps_cubit.freezed.dart';

class MapsCubit extends Cubit<MapsStates> {
  MapsCubit() : super(const MapsStates.initial());

  static MapsCubit get(BuildContext context) => BlocProvider.of(context);

  /// Map Controller
  final Completer<GoogleMapController> googleMapCtrl = Completer();
  loc.LocationData? locationData;
  loc.Location location = loc.Location();

  mapController(GoogleMapController controller) async {
    googleMapCtrl.complete(controller);
    locationData = await location.getLocation();
    controller.animateCamera(
      CameraUpdate.newCameraPosition(
        CameraPosition(
          target: LatLng(locationData!.latitude!, locationData!.longitude!),
          zoom: 15,
        ),
      ),
    );
    emit(
      const MapsStates.mapController(),
    );
  }

  /// Add Marker
  List<Marker> markers = [];

  addMarker(List mapsList) {
    for (int i = 0; i < mapsList.length; i++) {
      markers.add(
        Marker(
          markerId: MarkerId('${mapsList[i].id}'),
          position: LatLng(
            double.parse(mapsList[i].latitude!),
            double.parse(mapsList[i].longitude!),
          ),
          icon: BitmapDescriptor.defaultMarker,
        ),
      );
    }
    emit(
      const MapsStates.newLocation(),
    );
  }

  /// Convert Marker to Address data
  Future<Placemark> convertLocation(LatLng currentPosition) async {
    List<Placemark> placeMarks = await placemarkFromCoordinates(
        currentPosition.latitude, currentPosition.longitude);
    Placemark place = placeMarks[0];
    return place;
  }

}
