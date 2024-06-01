import 'package:equatable/equatable.dart';

import 'burial_locations_entity.dart';
import 'mosques_entity.dart';
import 'phones_model.dart';

class SupervisorBasicInfoEntity extends Equatable {
  final String? token;
  final String? city;
  final List<PhonesEntity>? phones;
  final List<MosquesEntity>? mosques;
  final List<BurialLocationsEntity>? burialLocations;
  final List<num>? helpers;
  final num? supervisorId;

  const SupervisorBasicInfoEntity({
    required this.token,
    required this.city,
    required this.phones,
    required this.mosques,
    required this.burialLocations,
    required this.helpers,
    required this.supervisorId,
  });

  @override
  List<Object?> get props => [
        token,
        city,
        phones,
        mosques,
        burialLocations,
        helpers,
        supervisorId,
      ];
}
