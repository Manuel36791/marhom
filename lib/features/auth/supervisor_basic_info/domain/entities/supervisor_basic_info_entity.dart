import 'package:equatable/equatable.dart';

class SupervisorBasicInfoEntity extends Equatable {
  final String? token;
  final String? city;
  final dynamic phones;
  final dynamic mosques;
  final dynamic burialLocations;
  final Map<String, int>? helpers;
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
