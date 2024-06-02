// ignore_for_file: annotate_overrides, overridden_fields

import 'package:json_annotation/json_annotation.dart';

import '../../domain/entities/supervisor_delete_account_entity.dart';

part 'supervisor_delete_account_model.g.dart';

@JsonSerializable()
class SupervisorDeleteAccountModel extends SupervisorDeleteAccountEntity {
  @JsonKey(includeFromJson: false, includeToJson: true)
  final String? token;
  @JsonKey(includeFromJson: true, includeToJson: false)
  final num? status;
  @JsonKey(includeFromJson: true, includeToJson: false)
  final String? success;
  @JsonKey(includeFromJson: true, includeToJson: false)
  final String? error;

  const SupervisorDeleteAccountModel({
    this.token,
    this.status,
    this.success,
    this.error,
  }) : super(
          token: token,
          status: status,
          success: success,
          error: error,
        );

  factory SupervisorDeleteAccountModel.fromJson(Map<String, dynamic> json) =>
      _$SupervisorDeleteAccountModelFromJson(json);

  Map<String, dynamic> toJson() => _$SupervisorDeleteAccountModelToJson(this);
}
