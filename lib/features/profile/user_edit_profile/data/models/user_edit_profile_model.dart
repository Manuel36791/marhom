// ignore_for_file: overridden_fields, annotate_overrides

import 'package:json_annotation/json_annotation.dart';

import '../../domain/entities/user_edit_profile_entity.dart';

part 'user_edit_profile_model.g.dart';

@JsonSerializable()
class UserEditProfileModel extends UserEditProfileEntity {
  @JsonKey(includeFromJson: false, includeToJson: true)
  final String? token;
  @JsonKey(name: "first_name", includeFromJson: false, includeToJson: true)
  final String? firstName;
  @JsonKey(name: "last_name", includeFromJson: false, includeToJson: true)
  final String? lastName;
  @JsonKey(includeFromJson: false, includeToJson: true)
  final String? phone;
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

  const UserEditProfileModel({
    this.token,
    this.firstName,
    this.lastName,
    this.phone,
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
          avatar: avatar,
          snapchatId: snapchatId,
          status: status,
          success: success,
          error: error,
        );

  factory UserEditProfileModel.fromJson(Map<String, dynamic> json) =>
      _$UserEditProfileModelFromJson(json);
  Map<String, dynamic> toJson() => _$UserEditProfileModelToJson(this);
}
