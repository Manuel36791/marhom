import 'package:equatable/equatable.dart';

import 'coordinates_entity.dart';

class BurialLocationsEntity extends Equatable {
  final String? name;
  final String? city;
  final CoordinatesEntity? location;

  const BurialLocationsEntity({
    this.name,
    this.city,
    this.location,
  });

  @override
  List<Object?> get props => [
        name,
        city,
        location,
      ];
}
