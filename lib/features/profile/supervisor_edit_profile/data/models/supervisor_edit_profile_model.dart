// ignore_for_file: overridden_fields, annotate_overrides

import 'package:json_annotation/json_annotation.dart';

import '../../domain/entities/supervisor_edit_profile_entity.dart';

part 'supervisor_edit_profile_model.g.dart';

@JsonSerializable()
class SupervisorEditProfileModel extends SupervisorEditProfileEntity {
  @JsonKey(includeFromJson: false, includeToJson: true)
  final String? token;
  @JsonKey(name: "first_name", includeFromJson: false, includeToJson: true)
  final String? firstName;
  @JsonKey(name: "last_name", includeFromJson: false, includeToJson: true)
  final String? lastName;
  @JsonKey(includeFromJson: false, includeToJson: true)
  final String? phone;
  @JsonKey(name: "user_name", includeFromJson: false, includeToJson: true)
  final String? userName;
  @JsonKey(includeFromJson: false, includeToJson: true)
  final String? email;
  @JsonKey(name: "password", includeFromJson: false, includeToJson: true)
  final String? pass;
  @JsonKey(
      name: "password_confirmation",
      includeFromJson: false,
      includeToJson: true)
  final String? passConf;
  @JsonKey(includeFromJson: false, includeToJson: true)
  final String? avatar;
  @JsonKey(name: "snapchat_id", includeFromJson: false, includeToJson: true)
  final String? snapchatId;
  @JsonKey(includeFromJson: true, includeToJson: false)
  final num? status;
  @JsonKey(includeFromJson: true, includeToJson: false)
  final String? success;
  @JsonKey(includeFromJson: true, includeToJson: false)
  final String? error;

  const SupervisorEditProfileModel({
    this.token,
    this.firstName,
    this.lastName,
    this.phone,
    this.userName,
    this.email,
    this.pass,
    this.passConf,
    this.avatar,
    this.snapchatId,
    this.status,
    this.success,
    this.error,
  }) : super(
          token: token,
          firstName: firstName,
          lastName: lastName,
          phone: phone,
          userName: userName,
          email: email,
          pass: pass,
          passConf: passConf,
          avatar: avatar,
          snapchatId: snapchatId,
          status: status,
          success: success,
          error: error,
        );

  factory SupervisorEditProfileModel.fromJson(Map<String, dynamic> json) =>
      _$SupervisorEditProfileModelFromJson(json);
  Map<String, dynamic> toJson() => _$SupervisorEditProfileModelToJson(this);
}
