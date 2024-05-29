// ignore_for_file: overridden_fields, annotate_overrides

import 'package:json_annotation/json_annotation.dart';

import '../../domain/entities/check_phone_entity.dart';

part 'check_phone_model.g.dart';

@JsonSerializable()
class CheckPhoneModel extends CheckPhoneEntity {
  @JsonKey(includeFromJson: false, includeToJson: true)
  final String? phone;
  @JsonKey(includeFromJson: true, includeToJson: false)
  final num? status;
  @JsonKey(includeFromJson: true, includeToJson: false)
  final String? success;
  @JsonKey(includeFromJson: true, includeToJson: false)
  final Map<String, dynamic>? error;

  const CheckPhoneModel({
    this.phone,
    this.status,
    this.success,
    this.error,
  }) : super(
          phone: phone,
          status: status,
          success: success,
          error: error,
        );

  factory CheckPhoneModel.fromJson(Map<String, dynamic> json) =>
      _$CheckPhoneModelFromJson(json);

  Map<String, dynamic> toJson() => _$CheckPhoneModelToJson(this);
}
