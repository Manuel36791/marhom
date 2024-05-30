// ignore_for_file: overridden_fields, annotate_overrides

import 'package:json_annotation/json_annotation.dart';

import '../../../../../core/shared/models/user_data_model.dart';
import '../../domain/entities/user_register_or_login_entity.dart';

part 'user_register_or_login_model.g.dart';

@JsonSerializable()
class UserRegisterOrLoginModel extends UserRegisterOrLoginEntity {
  @JsonKey(name: "first_name", includeToJson: true, includeFromJson: false)
  final String? firstName;
  @JsonKey(name: "last_name", includeToJson: true, includeFromJson: false)
  final String? lastName;
  @JsonKey(includeToJson: true, includeFromJson: false)
  final String? phone;
  @JsonKey(name: "snapchat_id", includeToJson: true, includeFromJson: false)
  final String? snapChatId;
  @JsonKey(includeToJson: false, includeFromJson: true)
  final num? status;
  @JsonKey(includeToJson: false, includeFromJson: true)
  final String? message;
  @JsonKey(includeToJson: false, includeFromJson: true)
  final Map<String, dynamic>? error;
  @JsonKey(includeToJson: false, includeFromJson: true)
  final String? token;
  @JsonKey(name: "user", includeToJson: false, includeFromJson: true)
  final UserData? userData;

  const UserRegisterOrLoginModel({
    this.firstName,
    this.lastName,
    this.phone,
    this.snapChatId,
    this.status,
    this.message,
    this.error,
    this.token,
    this.userData,
  }) : super(
          firstName: firstName,
          lastName: lastName,
          phone: phone,
          snapChatId: snapChatId,
          status: status,
          message: message,
          error: error,
          token: token,
          userData: userData,
        );

  factory UserRegisterOrLoginModel.fromJson(Map<String, dynamic> json) =>
      _$UserRegisterOrLoginModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserRegisterOrLoginModelToJson(this);

  @override
  List<Object?> get props => [
        firstName,
        lastName,
        phone,
        snapChatId,
        status,
        message,
        error,
        token,
        userData,
      ];
}
