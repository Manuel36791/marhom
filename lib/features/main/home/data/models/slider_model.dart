// ignore_for_file: overridden_fields, annotate_overrides

import 'package:json_annotation/json_annotation.dart';

import '../../domain/entities/slider_entity.dart';

part 'slider_model.g.dart';

@JsonSerializable()
class SlidersResponseModel extends SlidersResponseEntity {
  @JsonKey(name: "data")
  final List<SlidersModel>? data;

  const SlidersResponseModel({
    this.data,
  }) : super (
    data: data,
  );

  factory SlidersResponseModel.fromJson(Map<String, dynamic> json) => _$SlidersResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$SlidersResponseModelToJson(this);
}

@JsonSerializable()
class SlidersModel extends SlidersEntity {
  @JsonKey(name: "slider")
  final String? slider;

  const SlidersModel({
    this.slider,
  }) : super (
    slider: slider,
  );

  factory SlidersModel.fromJson(Map<String, dynamic> json) => _$SlidersModelFromJson(json);

  Map<String, dynamic> toJson() => _$SlidersModelToJson(this);
}
