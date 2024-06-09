// ignore_for_file: overridden_fields, annotate_overrides

import 'package:json_annotation/json_annotation.dart';

import '../../domain/entities/supervisor_basic_info_entity.dart';

part 'supervisor_basic_info_model.g.dart';

@JsonSerializable()
class SupervisorBasicInfoModel extends SupervisorBasicInfoEntity {
  final String? token;
  final String? city;
  final dynamic phones;
  final dynamic mosques;
  @JsonKey(name: 'burial_locations')
  final dynamic burialLocations;
  final Map<String, int>? helpers;
  @JsonKey(name: 'supervisor_id')
  final num? supervisorId;

  const SupervisorBasicInfoModel({
     this.token,
     this.city,
     this.phones,
     this.mosques,
     this.burialLocations,
     this.helpers,
     this.supervisorId,
  }) : super(
    token: token,
    city: city,
    phones: phones,
    mosques: mosques,
    burialLocations: burialLocations,
    helpers: helpers,
    supervisorId: supervisorId,
  );

  factory SupervisorBasicInfoModel.fromJson(Map<String, dynamic> json) =>
      _$SupervisorBasicInfoModelFromJson(json);

  Map<String, dynamic> toJson() => _$SupervisorBasicInfoModelToJson(this);
}
