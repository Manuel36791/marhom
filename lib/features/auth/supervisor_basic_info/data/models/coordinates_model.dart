// ignore_for_file: overridden_fields, annotate_overrides

import 'package:json_annotation/json_annotation.dart';

import '../../domain/entities/coordinates_entity.dart';

part 'coordinates_model.g.dart';

@JsonSerializable()
class CoordinatesModel extends CoordinatesEntity {
  final String? latitude;
  final String? longitude;

  const CoordinatesModel({
    this.latitude,
    this.longitude,
  }) : super (
    latitude: latitude,
    longitude: longitude,
  );

  factory CoordinatesModel.fromJson(Map<String, dynamic> json) =>
      _$CoordinatesModelFromJson(json);

  Map<String, dynamic> toJson() => _$CoordinatesModelToJson(this);

  @override
  List<Object?> get props => [
        latitude,
        longitude,
      ];
}
