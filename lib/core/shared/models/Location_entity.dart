import 'package:equatable/equatable.dart';

class LocationEntity extends Equatable {
  final double? lat;
  final double? lng;

  const LocationEntity({
    this.lat,
    this.lng,
  });

  @override
  List<Object?> get props => [
    lat,
    lng,
  ];

  LocationEntity copyWith({
    double? lat,
    double? lng,
  }) {
    return LocationEntity(
      lat: lat ?? this.lat,
      lng: lng ?? this.lng,
    );
  }
}
