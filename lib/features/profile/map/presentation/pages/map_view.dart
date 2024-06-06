import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geocoding/geocoding.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:marhom/core/router/router.dart';
import 'package:marhom/core/utils/app_constants.dart';
import 'package:marhom/core/utils/extensions.dart';

import '../../../../../core/dependency_injection/di.dart' as di;
import '../../../../../core/shared/models/location_model.dart';
import '../../../../../core/shared/widgets/custom_button.dart';
import '../../../../../core/utils/logger.dart';
import '../manager/maps_cubit.dart';
import '../widgets/google_map_builder.dart';

class MapView extends StatefulWidget {
  final num location;

  const MapView({super.key, required this.location});

  @override
  State<MapView> createState() => _MapViewState();
}

class _MapViewState extends State<MapView> {
  Marker? marker;
  Placemark? address;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => di.di<MapsCubit>(),
      child: BlocConsumer<MapsCubit, MapsStates>(
        listener: (context, state) {},
        builder: (context, state) {
          MapsCubit mapsCubit = MapsCubit.get(context);
          return Scaffold(
            appBar: AppBar(
              title: Text("Choose a Location"),
              centerTitle: true,
            ),
            body: SafeArea(
              child: Stack(
                children: [
                  GoogleMapBuilder(
                    onGoogleMapCreated: mapsCubit.mapController,
                    markers: mapsCubit.markers.map((e) => e).toSet(),
                    onTap: (LatLng latLng) async {
                      marker = Marker(
                        markerId: const MarkerId(
                          '1',
                        ),
                        position: LatLng(
                          latLng.latitude,
                          latLng.longitude,
                        ),
                        infoWindow: const InfoWindow(
                          title: "New Address",
                        ),
                        icon: BitmapDescriptor.defaultMarker,
                      );
                      mapsCubit.markers.add(
                        marker!,
                      );
                      setState(() {});
                      address = await mapsCubit.convertLocation(latLng);
                    },
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      color: Colors.white,
                      child: CustomBtn(
                        label: "Add Address",
                        onPressed: () {
                          logger.i(
                              "Lat: ${marker?.position.latitude}, Lng: ${marker?.position.longitude}, Address: $address");
                          logger.w(
                              "${address!.street}, ${address!.locality}, ${address!.subAdministrativeArea},  ${address!.administrativeArea}, ${address!.country}");

                          if (widget.location == 1) {
                            AppConstants.mosqueAddress =
                            "${address!.street}, ${address!.locality}, ${address!.subAdministrativeArea},  ${address!.administrativeArea}, ${address!.country}";
                            AppConstants.mosqueLocation = LocationModel(
                              lat: marker!.position.latitude,
                              lng: marker!.position.longitude,
                            );
                          } else {
                            AppConstants.burialAddress =
                            "${address!.street}, ${address!.locality}, ${address!.subAdministrativeArea},  ${address!.administrativeArea}, ${address!.country}";
                            AppConstants.burialLocation = LocationModel(
                              lat: marker!.position.latitude,
                              lng: marker!.position.longitude,
                            );
                          }

                          context.pushNamed(
                            sendMessageView,
                          );
                        },
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
