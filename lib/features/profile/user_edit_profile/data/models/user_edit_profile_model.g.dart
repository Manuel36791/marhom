// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_edit_profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserEditProfileModel _$UserEditProfileModelFromJson(
        Map<String, dynamic> json) =>
    UserEditProfileModel(
      status: json['status'] as num?,
      success: json['success'] as String?,
      error: json['error'] as String?,
    );

Map<String, dynamic> _$UserEditProfileModelToJson(
        UserEditProfileModel instance) =>
    <String, dynamic>{
      'token': instance.token,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'phone': instance.phone,
      'avatar': instance.avatar,
      'snapchat_id': instance.snapchatId,
    };
