// ignore_for_file: overridden_fields, annotate_overrides

import 'package:json_annotation/json_annotation.dart';

import '../../domain/entities/verify_account_entity.dart';

part 'verify_account_model.g.dart';

@JsonSerializable()
class VerifyAccountModel extends VerifyAccountEntity {
  @JsonKey(includeFromJson: true, includeToJson: false)
  final num? status;
  @JsonKey(includeFromJson: true, includeToJson: false)
  final String? success;
  @JsonKey(includeFromJson: false, includeToJson: true)
  final String? phone;
  @JsonKey(name: "code", includeFromJson: false, includeToJson: true)
  final String? otp;
  @JsonKey(includeFromJson: true, includeToJson: false)
  final String? error;

  const VerifyAccountModel({
    this.status,
    this.success,
    this.phone,
    this.otp,
    this.error,
  }) : super(
    status: status,
    success: success,
    phone: phone,
    otp: otp,
    error: error,
  );

  factory VerifyAccountModel.fromJson(Map<String, dynamic> json) =>
      _$VerifyAccountModelFromJson(json);

  Map<String, dynamic> toJson() => _$VerifyAccountModelToJson(this);

  @override
  List<Object?> get props => [
        status,
        success,
        phone,
        otp,
        error,
      ];
}
