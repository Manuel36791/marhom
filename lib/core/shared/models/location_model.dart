// ignore_for_file: annotate_overrides, overridden_fields

import 'package:json_annotation/json_annotation.dart';

import 'Location_entity.dart';

part 'location_model.g.dart';

@JsonSerializable()
class LocationModel extends LocationEntity {
  @JsonKey(name: 'latitude')
  final double? lat;
  @JsonKey(name: 'longitude')
  final double? lng;

  const LocationModel({
    this.lat,
    this.lng,
  }) : super(
          lat: lat,
          lng: lng,
        );

  factory LocationModel.fromJson(Map<String, dynamic> json) =>
      _$LocationModelFromJson(json);

  Map<String, dynamic> toJson() => _$LocationModelToJson(this);
}
