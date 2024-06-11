// ignore_for_file: overridden_fields, annotate_overrides

import 'package:json_annotation/json_annotation.dart';

import '../../domain/entities/about_us_entity.dart';

part 'about_us_model.g.dart';

@JsonSerializable()
class AboutUsModel extends AboutUsEntity {
  @JsonKey(includeFromJson: true, includeToJson: false)
  final num? id;
  @JsonKey(name:"about_ar",includeFromJson: true, includeToJson: false)
  final String? aboutAr;
  @JsonKey(name:"about_en", includeFromJson: true, includeToJson: false)
  final String? aboutEn;

  const AboutUsModel({
    this.id,
    this.aboutAr,
    this.aboutEn,
  }) : super(
          id: id,
          aboutAr: aboutAr,
          aboutEn: aboutEn,
        );

  factory AboutUsModel.fromJson(Map<String, dynamic> json) =>
      _$AboutUsModelFromJson(json);

  Map<String, dynamic> toJson() => _$AboutUsModelToJson(this);
}
