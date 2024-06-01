// ignore_for_file: overridden_fields, annotate_overrides

import 'package:json_annotation/json_annotation.dart';

import '../../domain/entities/burial_locations_entity.dart';
import 'coordinates_model.dart';

part 'burial_locations_model.g.dart';

@JsonSerializable()
class BurialLocationsModel extends BurialLocationsEntity {
  final String? name;
  final String? city;
  final CoordinatesModel? location;

  const BurialLocationsModel({this.name, this.city, this.location}) : super(
    name: name,
    city: city,
    location: location,
  );

  factory BurialLocationsModel.fromJson(Map<String, dynamic> json) =>
      _$BurialLocationsModelFromJson(json);

  Map<String, dynamic> toJson() => _$BurialLocationsModelToJson(this);


}
