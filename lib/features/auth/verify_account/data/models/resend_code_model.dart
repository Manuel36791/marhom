// ignore_for_file: overridden_fields, annotate_overrides

import 'package:json_annotation/json_annotation.dart';

import '../../domain/entities/resend_code_entity.dart';

part 'resend_code_model.g.dart';

@JsonSerializable()
class ResendCodeModel extends ResendCodeEntity {
  @JsonKey(includeFromJson: true, includeToJson: false)
  final num? status;
  @JsonKey(includeFromJson: true, includeToJson: false)
  final String? success;
  @JsonKey(includeFromJson: true, includeToJson: false)
  final String? error;
  @JsonKey(includeFromJson: false, includeToJson: true)
  final String? phone;

  const ResendCodeModel({
    this.status,
    this.success,
    this.error,
    this.phone,
  }) : super(
          status: status,
          success: success,
          error: error,
          phone: phone,
        );

  factory ResendCodeModel.fromJson(Map<String, dynamic> json) =>
      _$ResendCodeModelFromJson(json);

  Map<String, dynamic> toJson() => _$ResendCodeModelToJson(this);

  @override
  List<Object?> get props => [
        status,
        success,
        error,
        phone,
      ];
}
