import 'package:equatable/equatable.dart';

class LocationClass extends Equatable {
  final double? lat;
  final double? lng;

  const LocationClass({
    this.lat,
    this.lng,
  });

  @override
  List<Object?> get props => [
        lat,
        lng,
      ];
}
