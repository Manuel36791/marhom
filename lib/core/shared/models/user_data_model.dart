import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../utils/app_constants.dart';

part 'user_data_model.g.dart';

@JsonSerializable()
class UserData extends Equatable {
  @JsonKey(defaultValue: AppConstants.unknownNumValue)
  final num? id;
  @JsonKey(name: "first_name", defaultValue: AppConstants.unknownStringValue)
  final String? firstName;
  @JsonKey(name: "last_name", defaultValue: AppConstants.unknownStringValue)
  final String? lastName;
  @JsonKey(defaultValue: AppConstants.unknownStringValue)
  final String? avatar;
  @JsonKey(defaultValue: AppConstants.unknownStringValue)
  final String? email;
  @JsonKey(defaultValue: AppConstants.unknownStringValue)
  final String? phone;
  @JsonKey(name: "user_name",defaultValue: AppConstants.unknownStringValue)
  final String? userName;
  @JsonKey(defaultValue: AppConstants.unknownStringValue)
  final String? gender;
  @JsonKey(name: "snapchat_id", defaultValue: AppConstants.unknownStringValue)
  final String? snapChatId;
  @JsonKey(defaultValue: AppConstants.unknownNumValue)
  final num? type;
  @JsonKey(name: "supervisor_id", defaultValue: AppConstants.unknownNumValue)
  final num? supervisorId;
  @JsonKey(defaultValue: AppConstants.unknownNumValue)
  final num? otp;
  @JsonKey(defaultValue: AppConstants.unknownNumValue)
  final num? status;

  const UserData({
    this.id,
    this.firstName,
    this.lastName,
    this.avatar,
    this.email,
    this.phone,
    this.userName,
    this.gender,
    this.snapChatId,
    this.type,
    this.supervisorId,
    this.otp,
    this.status,
  });

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);

  Map<String, dynamic> toJson() => _$UserDataToJson(this);

  @override
  List<Object?> get props =>
      [
        id,
        firstName,
        lastName,
        avatar,
        email,
        phone,
        userName,
        gender,
        snapChatId,
        type,
        supervisorId,
        otp,
        status,
      ];
}


