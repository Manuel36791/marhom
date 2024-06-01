import 'package:equatable/equatable.dart';

class CoordinatesEntity extends Equatable {
  final String? latitude;
  final String? longitude;

  const CoordinatesEntity({
    this.latitude,
    this.longitude,
  });

  @override
  List<Object?> get props => [
    latitude,
    longitude,
  ];
}
