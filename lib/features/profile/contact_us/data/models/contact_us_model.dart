// ignore_for_file: annotate_overrides, overridden_fields

import 'package:json_annotation/json_annotation.dart';

import '../../domain/entities/contact_us_entity.dart';

part 'contact_us_model.g.dart';

@JsonSerializable()
class ContactUsModel extends ContactUsEntity {
  @JsonKey(includeFromJson: true, includeToJson: false)
  final num? id;
  @JsonKey(includeFromJson: true, includeToJson: false)
  final String? email;

  const ContactUsModel({
    this.id,
    this.email,
  }) : super (
    id: id,
    email: email,
  );

  factory ContactUsModel.fromJson(Map<String, dynamic> json) =>
      _$ContactUsModelFromJson(json);

  Map<String, dynamic> toJson() => _$ContactUsModelToJson(this);
}
