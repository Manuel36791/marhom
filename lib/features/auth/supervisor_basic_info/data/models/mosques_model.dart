// ignore_for_file: overridden_fields, annotate_overrides

import 'package:json_annotation/json_annotation.dart';

import '../../domain/entities/mosques_entity.dart';
import 'coordinates_model.dart';

part 'mosques_model.g.dart';

@JsonSerializable()
class MosquesModel extends MosquesEntity {
  final String? name;
  final String? city;
  final CoordinatesModel? location;

  const MosquesModel({this.name, this.city, this.location}) : super (
    name: name,
    city: city,
    location: location
  );

  factory MosquesModel.fromJson(Map<String, dynamic> json) =>
      _$MosquesModelFromJson(json);

  Map<String, dynamic> toJson() => _$MosquesModelToJson(this);
}
